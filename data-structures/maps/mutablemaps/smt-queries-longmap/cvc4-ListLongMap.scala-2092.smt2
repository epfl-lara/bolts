; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35732 () Bool)

(assert start!35732)

(declare-fun mapNonEmpty!13773 () Bool)

(declare-fun mapRes!13773 () Bool)

(declare-fun tp!27831 () Bool)

(declare-fun e!219594 () Bool)

(assert (=> mapNonEmpty!13773 (= mapRes!13773 (and tp!27831 e!219594))))

(declare-datatypes ((V!11879 0))(
  ( (V!11880 (val!4133 Int)) )
))
(declare-datatypes ((ValueCell!3745 0))(
  ( (ValueCellFull!3745 (v!6323 V!11879)) (EmptyCell!3745) )
))
(declare-fun mapValue!13773 () ValueCell!3745)

(declare-fun mapKey!13773 () (_ BitVec 32))

(declare-fun mapRest!13773 () (Array (_ BitVec 32) ValueCell!3745))

(declare-datatypes ((array!19879 0))(
  ( (array!19880 (arr!9430 (Array (_ BitVec 32) ValueCell!3745)) (size!9782 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19879)

(assert (=> mapNonEmpty!13773 (= (arr!9430 _values!1208) (store mapRest!13773 mapKey!13773 mapValue!13773))))

(declare-fun b!358602 () Bool)

(declare-fun tp_is_empty!8177 () Bool)

(assert (=> b!358602 (= e!219594 tp_is_empty!8177)))

(declare-fun b!358603 () Bool)

(declare-fun res!199369 () Bool)

(declare-fun e!219596 () Bool)

(assert (=> b!358603 (=> (not res!199369) (not e!219596))))

(declare-datatypes ((array!19881 0))(
  ( (array!19882 (arr!9431 (Array (_ BitVec 32) (_ BitVec 64))) (size!9783 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19881)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19881 (_ BitVec 32)) Bool)

(assert (=> b!358603 (= res!199369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358604 () Bool)

(assert (=> b!358604 (= e!219596 false)))

(declare-fun lt!166213 () Bool)

(declare-datatypes ((List!5466 0))(
  ( (Nil!5463) (Cons!5462 (h!6318 (_ BitVec 64)) (t!10624 List!5466)) )
))
(declare-fun arrayNoDuplicates!0 (array!19881 (_ BitVec 32) List!5466) Bool)

(assert (=> b!358604 (= lt!166213 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5463))))

(declare-fun res!199368 () Bool)

(assert (=> start!35732 (=> (not res!199368) (not e!219596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35732 (= res!199368 (validMask!0 mask!1842))))

(assert (=> start!35732 e!219596))

(assert (=> start!35732 true))

(declare-fun e!219593 () Bool)

(declare-fun array_inv!6934 (array!19879) Bool)

(assert (=> start!35732 (and (array_inv!6934 _values!1208) e!219593)))

(declare-fun array_inv!6935 (array!19881) Bool)

(assert (=> start!35732 (array_inv!6935 _keys!1456)))

(declare-fun b!358605 () Bool)

(declare-fun res!199367 () Bool)

(assert (=> b!358605 (=> (not res!199367) (not e!219596))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358605 (= res!199367 (and (= (size!9782 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9783 _keys!1456) (size!9782 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13773 () Bool)

(assert (=> mapIsEmpty!13773 mapRes!13773))

(declare-fun b!358606 () Bool)

(declare-fun e!219592 () Bool)

(assert (=> b!358606 (= e!219592 tp_is_empty!8177)))

(declare-fun b!358607 () Bool)

(assert (=> b!358607 (= e!219593 (and e!219592 mapRes!13773))))

(declare-fun condMapEmpty!13773 () Bool)

(declare-fun mapDefault!13773 () ValueCell!3745)

