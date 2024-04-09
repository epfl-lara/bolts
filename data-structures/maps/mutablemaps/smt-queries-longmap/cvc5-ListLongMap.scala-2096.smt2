; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35752 () Bool)

(assert start!35752)

(declare-fun mapNonEmpty!13803 () Bool)

(declare-fun mapRes!13803 () Bool)

(declare-fun tp!27870 () Bool)

(declare-fun e!219744 () Bool)

(assert (=> mapNonEmpty!13803 (= mapRes!13803 (and tp!27870 e!219744))))

(declare-datatypes ((V!11907 0))(
  ( (V!11908 (val!4143 Int)) )
))
(declare-datatypes ((ValueCell!3755 0))(
  ( (ValueCellFull!3755 (v!6333 V!11907)) (EmptyCell!3755) )
))
(declare-fun mapRest!13803 () (Array (_ BitVec 32) ValueCell!3755))

(declare-fun mapKey!13803 () (_ BitVec 32))

(declare-datatypes ((array!19919 0))(
  ( (array!19920 (arr!9450 (Array (_ BitVec 32) ValueCell!3755)) (size!9802 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19919)

(declare-fun mapValue!13803 () ValueCell!3755)

(assert (=> mapNonEmpty!13803 (= (arr!9450 _values!1208) (store mapRest!13803 mapKey!13803 mapValue!13803))))

(declare-fun b!358881 () Bool)

(declare-fun e!219746 () Bool)

(assert (=> b!358881 (= e!219746 false)))

(declare-fun lt!166243 () Bool)

(declare-datatypes ((array!19921 0))(
  ( (array!19922 (arr!9451 (Array (_ BitVec 32) (_ BitVec 64))) (size!9803 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19921)

(declare-datatypes ((List!5476 0))(
  ( (Nil!5473) (Cons!5472 (h!6328 (_ BitVec 64)) (t!10634 List!5476)) )
))
(declare-fun arrayNoDuplicates!0 (array!19921 (_ BitVec 32) List!5476) Bool)

(assert (=> b!358881 (= lt!166243 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5473))))

(declare-fun mapIsEmpty!13803 () Bool)

(assert (=> mapIsEmpty!13803 mapRes!13803))

(declare-fun b!358882 () Bool)

(declare-fun res!199556 () Bool)

(assert (=> b!358882 (=> (not res!199556) (not e!219746))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19921 (_ BitVec 32)) Bool)

(assert (=> b!358882 (= res!199556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199557 () Bool)

(assert (=> start!35752 (=> (not res!199557) (not e!219746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35752 (= res!199557 (validMask!0 mask!1842))))

(assert (=> start!35752 e!219746))

(assert (=> start!35752 true))

(declare-fun e!219743 () Bool)

(declare-fun array_inv!6952 (array!19919) Bool)

(assert (=> start!35752 (and (array_inv!6952 _values!1208) e!219743)))

(declare-fun array_inv!6953 (array!19921) Bool)

(assert (=> start!35752 (array_inv!6953 _keys!1456)))

(declare-fun b!358883 () Bool)

(declare-fun e!219742 () Bool)

(assert (=> b!358883 (= e!219743 (and e!219742 mapRes!13803))))

(declare-fun condMapEmpty!13803 () Bool)

(declare-fun mapDefault!13803 () ValueCell!3755)

