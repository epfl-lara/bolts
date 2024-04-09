; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77552 () Bool)

(assert start!77552)

(declare-fun b_free!16109 () Bool)

(declare-fun b_next!16109 () Bool)

(assert (=> start!77552 (= b_free!16109 (not b_next!16109))))

(declare-fun tp!56590 () Bool)

(declare-fun b_and!26493 () Bool)

(assert (=> start!77552 (= tp!56590 b_and!26493)))

(declare-fun b!903128 () Bool)

(declare-fun e!506016 () Bool)

(declare-fun tp_is_empty!18527 () Bool)

(assert (=> b!903128 (= e!506016 tp_is_empty!18527)))

(declare-fun mapIsEmpty!29503 () Bool)

(declare-fun mapRes!29503 () Bool)

(assert (=> mapIsEmpty!29503 mapRes!29503))

(declare-fun b!903129 () Bool)

(declare-fun e!506017 () Bool)

(assert (=> b!903129 (= e!506017 tp_is_empty!18527)))

(declare-fun b!903130 () Bool)

(declare-fun e!506015 () Bool)

(assert (=> b!903130 (= e!506015 (and e!506017 mapRes!29503))))

(declare-fun condMapEmpty!29503 () Bool)

(declare-datatypes ((V!29667 0))(
  ( (V!29668 (val!9314 Int)) )
))
(declare-datatypes ((ValueCell!8782 0))(
  ( (ValueCellFull!8782 (v!11819 V!29667)) (EmptyCell!8782) )
))
(declare-datatypes ((array!53098 0))(
  ( (array!53099 (arr!25504 (Array (_ BitVec 32) ValueCell!8782)) (size!25964 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53098)

(declare-fun mapDefault!29503 () ValueCell!8782)

