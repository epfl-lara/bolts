; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34616 () Bool)

(assert start!34616)

(declare-fun b_free!7475 () Bool)

(declare-fun b_next!7475 () Bool)

(assert (=> start!34616 (= b_free!7475 (not b_next!7475))))

(declare-fun tp!25979 () Bool)

(declare-fun b_and!14707 () Bool)

(assert (=> start!34616 (= tp!25979 b_and!14707)))

(declare-fun b!345669 () Bool)

(declare-fun e!211871 () Bool)

(declare-fun tp_is_empty!7427 () Bool)

(assert (=> b!345669 (= e!211871 tp_is_empty!7427)))

(declare-fun mapNonEmpty!12588 () Bool)

(declare-fun mapRes!12588 () Bool)

(declare-fun tp!25980 () Bool)

(assert (=> mapNonEmpty!12588 (= mapRes!12588 (and tp!25980 e!211871))))

(declare-datatypes ((V!10879 0))(
  ( (V!10880 (val!3758 Int)) )
))
(declare-datatypes ((ValueCell!3370 0))(
  ( (ValueCellFull!3370 (v!5933 V!10879)) (EmptyCell!3370) )
))
(declare-fun mapRest!12588 () (Array (_ BitVec 32) ValueCell!3370))

(declare-fun mapKey!12588 () (_ BitVec 32))

(declare-fun mapValue!12588 () ValueCell!3370)

(declare-datatypes ((array!18409 0))(
  ( (array!18410 (arr!8715 (Array (_ BitVec 32) ValueCell!3370)) (size!9067 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18409)

(assert (=> mapNonEmpty!12588 (= (arr!8715 _values!1525) (store mapRest!12588 mapKey!12588 mapValue!12588))))

(declare-fun b!345670 () Bool)

(declare-fun e!211870 () Bool)

(declare-datatypes ((SeekEntryResult!3355 0))(
  ( (MissingZero!3355 (index!15599 (_ BitVec 32))) (Found!3355 (index!15600 (_ BitVec 32))) (Intermediate!3355 (undefined!4167 Bool) (index!15601 (_ BitVec 32)) (x!34438 (_ BitVec 32))) (Undefined!3355) (MissingVacant!3355 (index!15602 (_ BitVec 32))) )
))
(declare-fun lt!163035 () SeekEntryResult!3355)

(assert (=> b!345670 (= e!211870 (bvslt (index!15600 lt!163035) #b00000000000000000000000000000000))))

(declare-fun b!345671 () Bool)

(declare-fun e!211873 () Bool)

(assert (=> b!345671 (= e!211873 e!211870)))

(declare-fun res!191287 () Bool)

(assert (=> b!345671 (=> (not res!191287) (not e!211870))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18411 0))(
  ( (array!18412 (arr!8716 (Array (_ BitVec 32) (_ BitVec 64))) (size!9068 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18411)

(assert (=> b!345671 (= res!191287 (and (is-Found!3355 lt!163035) (= (select (arr!8716 _keys!1895) (index!15600 lt!163035)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18411 (_ BitVec 32)) SeekEntryResult!3355)

(assert (=> b!345671 (= lt!163035 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!345672 () Bool)

(declare-fun res!191293 () Bool)

(assert (=> b!345672 (=> (not res!191293) (not e!211873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18411 (_ BitVec 32)) Bool)

(assert (=> b!345672 (= res!191293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!191292 () Bool)

(assert (=> start!34616 (=> (not res!191292) (not e!211873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34616 (= res!191292 (validMask!0 mask!2385))))

(assert (=> start!34616 e!211873))

(assert (=> start!34616 true))

(assert (=> start!34616 tp_is_empty!7427))

(assert (=> start!34616 tp!25979))

(declare-fun e!211875 () Bool)

(declare-fun array_inv!6444 (array!18409) Bool)

(assert (=> start!34616 (and (array_inv!6444 _values!1525) e!211875)))

(declare-fun array_inv!6445 (array!18411) Bool)

(assert (=> start!34616 (array_inv!6445 _keys!1895)))

(declare-fun b!345673 () Bool)

(declare-fun e!211872 () Bool)

(assert (=> b!345673 (= e!211872 tp_is_empty!7427)))

(declare-fun b!345674 () Bool)

(declare-fun res!191288 () Bool)

(assert (=> b!345674 (=> (not res!191288) (not e!211870))))

(declare-fun arrayContainsKey!0 (array!18411 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!345674 (= res!191288 (arrayContainsKey!0 _keys!1895 k!1348 (index!15600 lt!163035)))))

(declare-fun b!345675 () Bool)

(declare-fun res!191289 () Bool)

(assert (=> b!345675 (=> (not res!191289) (not e!211873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345675 (= res!191289 (validKeyInArray!0 k!1348))))

(declare-fun b!345676 () Bool)

(declare-fun res!191294 () Bool)

(assert (=> b!345676 (=> (not res!191294) (not e!211873))))

(declare-fun zeroValue!1467 () V!10879)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10879)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((tuple2!5422 0))(
  ( (tuple2!5423 (_1!2721 (_ BitVec 64)) (_2!2721 V!10879)) )
))
(declare-datatypes ((List!5070 0))(
  ( (Nil!5067) (Cons!5066 (h!5922 tuple2!5422) (t!10200 List!5070)) )
))
(declare-datatypes ((ListLongMap!4349 0))(
  ( (ListLongMap!4350 (toList!2190 List!5070)) )
))
(declare-fun contains!2247 (ListLongMap!4349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1710 (array!18411 array!18409 (_ BitVec 32) (_ BitVec 32) V!10879 V!10879 (_ BitVec 32) Int) ListLongMap!4349)

(assert (=> b!345676 (= res!191294 (not (contains!2247 (getCurrentListMap!1710 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!345677 () Bool)

(declare-fun res!191290 () Bool)

(assert (=> b!345677 (=> (not res!191290) (not e!211873))))

(assert (=> b!345677 (= res!191290 (and (= (size!9067 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9068 _keys!1895) (size!9067 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345678 () Bool)

(assert (=> b!345678 (= e!211875 (and e!211872 mapRes!12588))))

(declare-fun condMapEmpty!12588 () Bool)

(declare-fun mapDefault!12588 () ValueCell!3370)

