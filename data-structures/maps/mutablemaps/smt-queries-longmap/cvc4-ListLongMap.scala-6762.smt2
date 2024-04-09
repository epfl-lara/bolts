; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84888 () Bool)

(assert start!84888)

(declare-fun b!991640 () Bool)

(declare-fun e!559343 () Bool)

(declare-datatypes ((List!20978 0))(
  ( (Nil!20975) (Cons!20974 (h!22136 (_ BitVec 64)) (t!29969 List!20978)) )
))
(declare-fun contains!5741 (List!20978 (_ BitVec 64)) Bool)

(assert (=> b!991640 (= e!559343 (contains!5741 Nil!20975 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991641 () Bool)

(declare-fun e!559346 () Bool)

(assert (=> b!991641 (= e!559346 e!559343)))

(declare-fun res!662939 () Bool)

(assert (=> b!991641 (=> res!662939 e!559343)))

(assert (=> b!991641 (= res!662939 (contains!5741 Nil!20975 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!991642 () Bool)

(declare-fun res!662941 () Bool)

(assert (=> b!991642 (=> (not res!662941) (not e!559346))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-datatypes ((V!36117 0))(
  ( (V!36118 (val!11726 Int)) )
))
(declare-datatypes ((ValueCell!11194 0))(
  ( (ValueCellFull!11194 (v!14302 V!36117)) (EmptyCell!11194) )
))
(declare-datatypes ((array!62655 0))(
  ( (array!62656 (arr!30169 (Array (_ BitVec 32) ValueCell!11194)) (size!30649 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62655)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-datatypes ((array!62657 0))(
  ( (array!62658 (arr!30170 (Array (_ BitVec 32) (_ BitVec 64))) (size!30650 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62657)

(assert (=> b!991642 (= res!662941 (and (= (size!30649 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30650 _keys!1945) (size!30649 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun b!991643 () Bool)

(declare-fun res!662937 () Bool)

(assert (=> b!991643 (=> (not res!662937) (not e!559346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62657 (_ BitVec 32)) Bool)

(assert (=> b!991643 (= res!662937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991644 () Bool)

(declare-fun res!662942 () Bool)

(assert (=> b!991644 (=> (not res!662942) (not e!559346))))

(assert (=> b!991644 (= res!662942 (and (bvsle #b00000000000000000000000000000000 (size!30650 _keys!1945)) (bvslt (size!30650 _keys!1945) #b01111111111111111111111111111111)))))

(declare-fun res!662940 () Bool)

(assert (=> start!84888 (=> (not res!662940) (not e!559346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84888 (= res!662940 (validMask!0 mask!2471))))

(assert (=> start!84888 e!559346))

(assert (=> start!84888 true))

(declare-fun e!559347 () Bool)

(declare-fun array_inv!23163 (array!62655) Bool)

(assert (=> start!84888 (and (array_inv!23163 _values!1551) e!559347)))

(declare-fun array_inv!23164 (array!62657) Bool)

(assert (=> start!84888 (array_inv!23164 _keys!1945)))

(declare-fun b!991645 () Bool)

(declare-fun res!662938 () Bool)

(assert (=> b!991645 (=> (not res!662938) (not e!559346))))

(declare-fun noDuplicate!1390 (List!20978) Bool)

(assert (=> b!991645 (= res!662938 (noDuplicate!1390 Nil!20975))))

(declare-fun b!991646 () Bool)

(declare-fun e!559344 () Bool)

(declare-fun tp_is_empty!23351 () Bool)

(assert (=> b!991646 (= e!559344 tp_is_empty!23351)))

(declare-fun b!991647 () Bool)

(declare-fun mapRes!37095 () Bool)

(assert (=> b!991647 (= e!559347 (and e!559344 mapRes!37095))))

(declare-fun condMapEmpty!37095 () Bool)

(declare-fun mapDefault!37095 () ValueCell!11194)

