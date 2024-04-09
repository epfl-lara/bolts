; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35270 () Bool)

(assert start!35270)

(declare-fun res!195938 () Bool)

(declare-fun e!216345 () Bool)

(assert (=> start!35270 (=> (not res!195938) (not e!216345))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35270 (= res!195938 (validMask!0 mask!1842))))

(assert (=> start!35270 e!216345))

(assert (=> start!35270 true))

(declare-datatypes ((V!11339 0))(
  ( (V!11340 (val!3930 Int)) )
))
(declare-datatypes ((ValueCell!3542 0))(
  ( (ValueCellFull!3542 (v!6119 V!11339)) (EmptyCell!3542) )
))
(declare-datatypes ((array!19093 0))(
  ( (array!19094 (arr!9043 (Array (_ BitVec 32) ValueCell!3542)) (size!9395 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19093)

(declare-fun e!216346 () Bool)

(declare-fun array_inv!6660 (array!19093) Bool)

(assert (=> start!35270 (and (array_inv!6660 _values!1208) e!216346)))

(declare-datatypes ((array!19095 0))(
  ( (array!19096 (arr!9044 (Array (_ BitVec 32) (_ BitVec 64))) (size!9396 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19095)

(declare-fun array_inv!6661 (array!19095) Bool)

(assert (=> start!35270 (array_inv!6661 _keys!1456)))

(declare-fun mapNonEmpty!13146 () Bool)

(declare-fun mapRes!13146 () Bool)

(declare-fun tp!27042 () Bool)

(declare-fun e!216347 () Bool)

(assert (=> mapNonEmpty!13146 (= mapRes!13146 (and tp!27042 e!216347))))

(declare-fun mapKey!13146 () (_ BitVec 32))

(declare-fun mapRest!13146 () (Array (_ BitVec 32) ValueCell!3542))

(declare-fun mapValue!13146 () ValueCell!3542)

(assert (=> mapNonEmpty!13146 (= (arr!9043 _values!1208) (store mapRest!13146 mapKey!13146 mapValue!13146))))

(declare-fun mapIsEmpty!13146 () Bool)

(assert (=> mapIsEmpty!13146 mapRes!13146))

(declare-fun b!353262 () Bool)

(declare-fun e!216344 () Bool)

(assert (=> b!353262 (= e!216346 (and e!216344 mapRes!13146))))

(declare-fun condMapEmpty!13146 () Bool)

(declare-fun mapDefault!13146 () ValueCell!3542)

