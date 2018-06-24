<?php

namespace Sitepoint\Converter;

use PHPUnit\Framework\TestCase;

class ConverterTest extends TestCase
{
		public function testHello() {
			$this->assertEquals( 'Hello', 'Hell' . 'o' );
		}
}