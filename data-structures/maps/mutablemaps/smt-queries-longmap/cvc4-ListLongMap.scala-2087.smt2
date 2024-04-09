; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35702 () Bool)

(assert start!35702)

(declare-fun b!358332 () Bool)

(declare-fun res!199234 () Bool)

(declare-fun e!219368 () Bool)

(assert (=> b!358332 (=> (not res!199234) (not e!219368))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19823 0))(
  ( (array!19824 (arr!9402 (Array (_ BitVec 32) (_ BitVec 64))) (size!9754 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19823)

(declare-datatypes ((V!11839 0))(
  ( (V!11840 (val!4118 Int)) )
))
(declare-datatypes ((ValueCell!3730 0))(
  ( (ValueCellFull!3730 (v!6308 V!11839)) (EmptyCell!3730) )
))
(declare-datatypes ((array!19825 0))(
  ( (array!19826 (arr!9403 (Array (_ BitVec 32) ValueCell!3730)) (size!9755 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19825)

(assert (=> b!358332 (= res!199234 (and (= (size!9755 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9754 _keys!1456) (size!9755 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13728 () Bool)

(declare-fun mapRes!13728 () Bool)

(declare-fun tp!27786 () Bool)

(declare-fun e!219367 () Bool)

(assert (=> mapNonEmpty!13728 (= mapRes!13728 (and tp!27786 e!219367))))

(declare-fun mapValue!13728 () ValueCell!3730)

(declare-fun mapKey!13728 () (_ BitVec 32))

(declare-fun mapRest!13728 () (Array (_ BitVec 32) ValueCell!3730))

(assert (=> mapNonEmpty!13728 (= (arr!9403 _values!1208) (store mapRest!13728 mapKey!13728 mapValue!13728))))

(declare-fun res!199233 () Bool)

(assert (=> start!35702 (=> (not res!199233) (not e!219368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35702 (= res!199233 (validMask!0 mask!1842))))

(assert (=> start!35702 e!219368))

(assert (=> start!35702 true))

(declare-fun e!219369 () Bool)

(declare-fun array_inv!6912 (array!19825) Bool)

(assert (=> start!35702 (and (array_inv!6912 _values!1208) e!219369)))

(declare-fun array_inv!6913 (array!19823) Bool)

(assert (=> start!35702 (array_inv!6913 _keys!1456)))

(declare-fun b!358333 () Bool)

(declare-fun e!219371 () Bool)

(assert (=> b!358333 (= e!219369 (and e!219371 mapRes!13728))))

(declare-fun condMapEmpty!13728 () Bool)

(declare-fun mapDefault!13728 () ValueCell!3730)

