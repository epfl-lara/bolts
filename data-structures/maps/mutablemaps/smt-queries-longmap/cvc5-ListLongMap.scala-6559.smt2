; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83266 () Bool)

(assert start!83266)

(declare-fun b_free!19231 () Bool)

(declare-fun b_next!19231 () Bool)

(assert (=> start!83266 (= b_free!19231 (not b_next!19231))))

(declare-fun tp!66972 () Bool)

(declare-fun b_and!30737 () Bool)

(assert (=> start!83266 (= tp!66972 b_and!30737)))

(declare-fun b!971119 () Bool)

(declare-fun res!650114 () Bool)

(declare-fun e!547479 () Bool)

(assert (=> b!971119 (=> (not res!650114) (not e!547479))))

(declare-datatypes ((array!60291 0))(
  ( (array!60292 (arr!29005 (Array (_ BitVec 32) (_ BitVec 64))) (size!29485 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60291)

(declare-datatypes ((List!20240 0))(
  ( (Nil!20237) (Cons!20236 (h!21398 (_ BitVec 64)) (t!28611 List!20240)) )
))
(declare-fun arrayNoDuplicates!0 (array!60291 (_ BitVec 32) List!20240) Bool)

(assert (=> b!971119 (= res!650114 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20237))))

(declare-fun b!971120 () Bool)

(declare-fun e!547480 () Bool)

(declare-fun tp_is_empty!22129 () Bool)

(assert (=> b!971120 (= e!547480 tp_is_empty!22129)))

(declare-fun b!971121 () Bool)

(declare-fun e!547478 () Bool)

(declare-fun mapRes!35203 () Bool)

(assert (=> b!971121 (= e!547478 (and e!547480 mapRes!35203))))

(declare-fun condMapEmpty!35203 () Bool)

(declare-datatypes ((V!34489 0))(
  ( (V!34490 (val!11115 Int)) )
))
(declare-datatypes ((ValueCell!10583 0))(
  ( (ValueCellFull!10583 (v!13674 V!34489)) (EmptyCell!10583) )
))
(declare-datatypes ((array!60293 0))(
  ( (array!60294 (arr!29006 (Array (_ BitVec 32) ValueCell!10583)) (size!29486 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60293)

(declare-fun mapDefault!35203 () ValueCell!10583)

