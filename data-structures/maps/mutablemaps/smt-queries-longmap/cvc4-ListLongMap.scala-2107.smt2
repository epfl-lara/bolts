; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35822 () Bool)

(assert start!35822)

(declare-fun b!359551 () Bool)

(declare-fun res!199914 () Bool)

(declare-fun e!220269 () Bool)

(assert (=> b!359551 (=> (not res!199914) (not e!220269))))

(declare-datatypes ((array!20055 0))(
  ( (array!20056 (arr!9518 (Array (_ BitVec 32) (_ BitVec 64))) (size!9870 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20055)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!20055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!359551 (= res!199914 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!359552 () Bool)

(declare-fun res!199917 () Bool)

(assert (=> b!359552 (=> (not res!199917) (not e!220269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!359552 (= res!199917 (validKeyInArray!0 k!1077))))

(declare-fun mapNonEmpty!13908 () Bool)

(declare-fun mapRes!13908 () Bool)

(declare-fun tp!27975 () Bool)

(declare-fun e!220268 () Bool)

(assert (=> mapNonEmpty!13908 (= mapRes!13908 (and tp!27975 e!220268))))

(declare-datatypes ((V!11999 0))(
  ( (V!12000 (val!4178 Int)) )
))
(declare-datatypes ((ValueCell!3790 0))(
  ( (ValueCellFull!3790 (v!6368 V!11999)) (EmptyCell!3790) )
))
(declare-fun mapValue!13908 () ValueCell!3790)

(declare-fun mapRest!13908 () (Array (_ BitVec 32) ValueCell!3790))

(declare-datatypes ((array!20057 0))(
  ( (array!20058 (arr!9519 (Array (_ BitVec 32) ValueCell!3790)) (size!9871 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20057)

(declare-fun mapKey!13908 () (_ BitVec 32))

(assert (=> mapNonEmpty!13908 (= (arr!9519 _values!1208) (store mapRest!13908 mapKey!13908 mapValue!13908))))

(declare-fun b!359553 () Bool)

(declare-fun res!199913 () Bool)

(assert (=> b!359553 (=> (not res!199913) (not e!220269))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!359553 (= res!199913 (and (= (size!9871 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9870 _keys!1456) (size!9871 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359554 () Bool)

(declare-fun res!199916 () Bool)

(assert (=> b!359554 (=> (not res!199916) (not e!220269))))

(assert (=> b!359554 (= res!199916 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9870 _keys!1456))))))

(declare-fun b!359555 () Bool)

(declare-fun tp_is_empty!8267 () Bool)

(assert (=> b!359555 (= e!220268 tp_is_empty!8267)))

(declare-fun b!359556 () Bool)

(declare-fun res!199911 () Bool)

(assert (=> b!359556 (=> (not res!199911) (not e!220269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20055 (_ BitVec 32)) Bool)

(assert (=> b!359556 (= res!199911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359557 () Bool)

(declare-fun res!199915 () Bool)

(assert (=> b!359557 (=> (not res!199915) (not e!220269))))

(assert (=> b!359557 (= res!199915 (not (= (select (arr!9518 _keys!1456) from!1805) k!1077)))))

(declare-fun res!199918 () Bool)

(assert (=> start!35822 (=> (not res!199918) (not e!220269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35822 (= res!199918 (validMask!0 mask!1842))))

(assert (=> start!35822 e!220269))

(assert (=> start!35822 tp_is_empty!8267))

(assert (=> start!35822 true))

(declare-fun array_inv!7008 (array!20055) Bool)

(assert (=> start!35822 (array_inv!7008 _keys!1456)))

(declare-fun e!220270 () Bool)

(declare-fun array_inv!7009 (array!20057) Bool)

(assert (=> start!35822 (and (array_inv!7009 _values!1208) e!220270)))

(declare-fun b!359558 () Bool)

(declare-fun e!220271 () Bool)

(assert (=> b!359558 (= e!220270 (and e!220271 mapRes!13908))))

(declare-fun condMapEmpty!13908 () Bool)

(declare-fun mapDefault!13908 () ValueCell!3790)

