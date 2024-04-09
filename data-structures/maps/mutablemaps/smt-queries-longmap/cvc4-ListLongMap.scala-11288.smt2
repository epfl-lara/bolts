; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131624 () Bool)

(assert start!131624)

(declare-datatypes ((array!102443 0))(
  ( (array!102444 (arr!49424 (Array (_ BitVec 32) (_ BitVec 64))) (size!49975 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102443)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun e!857357 () Bool)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58609 0))(
  ( (V!58610 (val!18890 Int)) )
))
(declare-datatypes ((ValueCell!17902 0))(
  ( (ValueCellFull!17902 (v!21687 V!58609)) (EmptyCell!17902) )
))
(declare-datatypes ((array!102445 0))(
  ( (array!102446 (arr!49425 (Array (_ BitVec 32) ValueCell!17902)) (size!49976 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102445)

(declare-fun b!1541428 () Bool)

(assert (=> b!1541428 (= e!857357 (and (= (size!49976 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49975 _keys!618) (size!49976 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011) (not (= (size!49975 _keys!618) (bvadd #b00000000000000000000000000000001 mask!926)))))))

(declare-fun res!1058064 () Bool)

(assert (=> start!131624 (=> (not res!1058064) (not e!857357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131624 (= res!1058064 (validMask!0 mask!926))))

(assert (=> start!131624 e!857357))

(assert (=> start!131624 true))

(declare-fun e!857355 () Bool)

(declare-fun array_inv!38369 (array!102445) Bool)

(assert (=> start!131624 (and (array_inv!38369 _values!470) e!857355)))

(declare-fun array_inv!38370 (array!102443) Bool)

(assert (=> start!131624 (array_inv!38370 _keys!618)))

(declare-fun mapNonEmpty!58126 () Bool)

(declare-fun mapRes!58126 () Bool)

(declare-fun tp!110654 () Bool)

(declare-fun e!857354 () Bool)

(assert (=> mapNonEmpty!58126 (= mapRes!58126 (and tp!110654 e!857354))))

(declare-fun mapRest!58126 () (Array (_ BitVec 32) ValueCell!17902))

(declare-fun mapValue!58126 () ValueCell!17902)

(declare-fun mapKey!58126 () (_ BitVec 32))

(assert (=> mapNonEmpty!58126 (= (arr!49425 _values!470) (store mapRest!58126 mapKey!58126 mapValue!58126))))

(declare-fun b!1541429 () Bool)

(declare-fun e!857356 () Bool)

(assert (=> b!1541429 (= e!857355 (and e!857356 mapRes!58126))))

(declare-fun condMapEmpty!58126 () Bool)

(declare-fun mapDefault!58126 () ValueCell!17902)

