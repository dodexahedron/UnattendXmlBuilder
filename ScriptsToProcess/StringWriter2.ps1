Add-Type -TypeDefinition @'
using System.IO;
using System.Text;
namespace MartinGC94.UnattendXmlBuilder
{
    public sealed class StringWriter2 : StringWriter
    {
        private readonly Encoding _encoding;
        public override Encoding Encoding
        {
            get { return _encoding; }
        }
        public StringWriter2(Encoding encoding)
        {
            _encoding = encoding;
        }
    }
}
'@