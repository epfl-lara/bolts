; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35554 () Bool)

(assert start!35554)

(declare-fun b!355993 () Bool)

(declare-fun res!197559 () Bool)

(declare-fun e!218180 () Bool)

(assert (=> b!355993 (=> (not res!197559) (not e!218180))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19541 0))(
  ( (array!19542 (arr!9261 (Array (_ BitVec 32) (_ BitVec 64))) (size!9613 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19541)

(declare-datatypes ((V!11643 0))(
  ( (V!11644 (val!4044 Int)) )
))
(declare-datatypes ((ValueCell!3656 0))(
  ( (ValueCellFull!3656 (v!6234 V!11643)) (EmptyCell!3656) )
))
(declare-datatypes ((array!19543 0))(
  ( (array!19544 (arr!9262 (Array (_ BitVec 32) ValueCell!3656)) (size!9614 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19543)

(assert (=> b!355993 (= res!197559 (and (= (size!9614 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9613 _keys!1456) (size!9614 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355994 () Bool)

(assert (=> b!355994 (= e!218180 (not true))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!19541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!355994 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11643)

(declare-datatypes ((Unit!10961 0))(
  ( (Unit!10962) )
))
(declare-fun lt!165874 () Unit!10961)

(declare-fun zeroValue!1150 () V!11643)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!1 (array!19541 array!19543 (_ BitVec 32) (_ BitVec 32) V!11643 V!11643 (_ BitVec 64) (_ BitVec 32)) Unit!10961)

(assert (=> b!355994 (= lt!165874 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!1 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!355995 () Bool)

(declare-fun res!197560 () Bool)

(assert (=> b!355995 (=> (not res!197560) (not e!218180))))

(assert (=> b!355995 (= res!197560 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!355996 () Bool)

(declare-fun res!197561 () Bool)

(assert (=> b!355996 (=> (not res!197561) (not e!218180))))

(assert (=> b!355996 (= res!197561 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9613 _keys!1456))))))

(declare-fun b!355997 () Bool)

(declare-fun res!197563 () Bool)

(assert (=> b!355997 (=> (not res!197563) (not e!218180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!355997 (= res!197563 (validKeyInArray!0 k!1077))))

(declare-fun b!355998 () Bool)

(declare-fun e!218178 () Bool)

(declare-fun tp_is_empty!7999 () Bool)

(assert (=> b!355998 (= e!218178 tp_is_empty!7999)))

(declare-fun b!355999 () Bool)

(declare-fun res!197564 () Bool)

(assert (=> b!355999 (=> (not res!197564) (not e!218180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19541 (_ BitVec 32)) Bool)

(assert (=> b!355999 (= res!197564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356000 () Bool)

(declare-fun res!197565 () Bool)

(assert (=> b!356000 (=> (not res!197565) (not e!218180))))

(declare-datatypes ((List!5385 0))(
  ( (Nil!5382) (Cons!5381 (h!6237 (_ BitVec 64)) (t!10543 List!5385)) )
))
(declare-fun arrayNoDuplicates!0 (array!19541 (_ BitVec 32) List!5385) Bool)

(assert (=> b!356000 (= res!197565 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5382))))

(declare-fun b!356001 () Bool)

(declare-fun e!218177 () Bool)

(assert (=> b!356001 (= e!218177 tp_is_empty!7999)))

(declare-fun b!356002 () Bool)

(declare-fun e!218179 () Bool)

(declare-fun mapRes!13506 () Bool)

(assert (=> b!356002 (= e!218179 (and e!218177 mapRes!13506))))

(declare-fun condMapEmpty!13506 () Bool)

(declare-fun mapDefault!13506 () ValueCell!3656)

