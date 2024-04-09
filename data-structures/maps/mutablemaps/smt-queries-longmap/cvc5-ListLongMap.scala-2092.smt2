; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35728 () Bool)

(assert start!35728)

(declare-fun mapIsEmpty!13767 () Bool)

(declare-fun mapRes!13767 () Bool)

(assert (=> mapIsEmpty!13767 mapRes!13767))

(declare-fun b!358566 () Bool)

(declare-fun res!199349 () Bool)

(declare-fun e!219563 () Bool)

(assert (=> b!358566 (=> (not res!199349) (not e!219563))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19871 0))(
  ( (array!19872 (arr!9426 (Array (_ BitVec 32) (_ BitVec 64))) (size!9778 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19871)

(declare-datatypes ((V!11875 0))(
  ( (V!11876 (val!4131 Int)) )
))
(declare-datatypes ((ValueCell!3743 0))(
  ( (ValueCellFull!3743 (v!6321 V!11875)) (EmptyCell!3743) )
))
(declare-datatypes ((array!19873 0))(
  ( (array!19874 (arr!9427 (Array (_ BitVec 32) ValueCell!3743)) (size!9779 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19873)

(assert (=> b!358566 (= res!199349 (and (= (size!9779 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9778 _keys!1456) (size!9779 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199350 () Bool)

(assert (=> start!35728 (=> (not res!199350) (not e!219563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35728 (= res!199350 (validMask!0 mask!1842))))

(assert (=> start!35728 e!219563))

(assert (=> start!35728 true))

(declare-fun e!219562 () Bool)

(declare-fun array_inv!6930 (array!19873) Bool)

(assert (=> start!35728 (and (array_inv!6930 _values!1208) e!219562)))

(declare-fun array_inv!6931 (array!19871) Bool)

(assert (=> start!35728 (array_inv!6931 _keys!1456)))

(declare-fun b!358567 () Bool)

(declare-fun e!219564 () Bool)

(declare-fun tp_is_empty!8173 () Bool)

(assert (=> b!358567 (= e!219564 tp_is_empty!8173)))

(declare-fun mapNonEmpty!13767 () Bool)

(declare-fun tp!27825 () Bool)

(assert (=> mapNonEmpty!13767 (= mapRes!13767 (and tp!27825 e!219564))))

(declare-fun mapKey!13767 () (_ BitVec 32))

(declare-fun mapValue!13767 () ValueCell!3743)

(declare-fun mapRest!13767 () (Array (_ BitVec 32) ValueCell!3743))

(assert (=> mapNonEmpty!13767 (= (arr!9427 _values!1208) (store mapRest!13767 mapKey!13767 mapValue!13767))))

(declare-fun b!358568 () Bool)

(declare-fun res!199351 () Bool)

(assert (=> b!358568 (=> (not res!199351) (not e!219563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19871 (_ BitVec 32)) Bool)

(assert (=> b!358568 (= res!199351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!358569 () Bool)

(declare-fun e!219565 () Bool)

(assert (=> b!358569 (= e!219565 tp_is_empty!8173)))

(declare-fun b!358570 () Bool)

(assert (=> b!358570 (= e!219563 false)))

(declare-fun lt!166207 () Bool)

(declare-datatypes ((List!5464 0))(
  ( (Nil!5461) (Cons!5460 (h!6316 (_ BitVec 64)) (t!10622 List!5464)) )
))
(declare-fun arrayNoDuplicates!0 (array!19871 (_ BitVec 32) List!5464) Bool)

(assert (=> b!358570 (= lt!166207 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5461))))

(declare-fun b!358571 () Bool)

(assert (=> b!358571 (= e!219562 (and e!219565 mapRes!13767))))

(declare-fun condMapEmpty!13767 () Bool)

(declare-fun mapDefault!13767 () ValueCell!3743)

