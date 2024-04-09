; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33690 () Bool)

(assert start!33690)

(declare-fun b_free!6917 () Bool)

(declare-fun b_next!6917 () Bool)

(assert (=> start!33690 (= b_free!6917 (not b_next!6917))))

(declare-fun tp!24254 () Bool)

(declare-fun b_and!14115 () Bool)

(assert (=> start!33690 (= tp!24254 b_and!14115)))

(declare-fun b!334432 () Bool)

(declare-fun res!184475 () Bool)

(declare-fun e!205293 () Bool)

(assert (=> b!334432 (=> (not res!184475) (not e!205293))))

(declare-datatypes ((array!17325 0))(
  ( (array!17326 (arr!8190 (Array (_ BitVec 32) (_ BitVec 64))) (size!8542 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17325)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17325 (_ BitVec 32)) Bool)

(assert (=> b!334432 (= res!184475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334433 () Bool)

(declare-fun res!184478 () Bool)

(assert (=> b!334433 (=> (not res!184478) (not e!205293))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((V!10135 0))(
  ( (V!10136 (val!3479 Int)) )
))
(declare-datatypes ((ValueCell!3091 0))(
  ( (ValueCellFull!3091 (v!5637 V!10135)) (EmptyCell!3091) )
))
(declare-datatypes ((array!17327 0))(
  ( (array!17328 (arr!8191 (Array (_ BitVec 32) ValueCell!3091)) (size!8543 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17327)

(assert (=> b!334433 (= res!184478 (and (= (size!8543 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8542 _keys!1895) (size!8543 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334434 () Bool)

(declare-fun res!184471 () Bool)

(assert (=> b!334434 (=> (not res!184471) (not e!205293))))

(declare-datatypes ((List!4697 0))(
  ( (Nil!4694) (Cons!4693 (h!5549 (_ BitVec 64)) (t!9793 List!4697)) )
))
(declare-fun arrayNoDuplicates!0 (array!17325 (_ BitVec 32) List!4697) Bool)

(assert (=> b!334434 (= res!184471 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4694))))

(declare-fun b!334435 () Bool)

(declare-fun e!205296 () Bool)

(declare-fun tp_is_empty!6869 () Bool)

(assert (=> b!334435 (= e!205296 tp_is_empty!6869)))

(declare-fun b!334436 () Bool)

(declare-fun e!205295 () Bool)

(assert (=> b!334436 (= e!205293 e!205295)))

(declare-fun res!184473 () Bool)

(assert (=> b!334436 (=> (not res!184473) (not e!205295))))

(declare-datatypes ((SeekEntryResult!3176 0))(
  ( (MissingZero!3176 (index!14883 (_ BitVec 32))) (Found!3176 (index!14884 (_ BitVec 32))) (Intermediate!3176 (undefined!3988 Bool) (index!14885 (_ BitVec 32)) (x!33345 (_ BitVec 32))) (Undefined!3176) (MissingVacant!3176 (index!14886 (_ BitVec 32))) )
))
(declare-fun lt!159518 () SeekEntryResult!3176)

(declare-fun k!1348 () (_ BitVec 64))

(assert (=> b!334436 (= res!184473 (and (is-Found!3176 lt!159518) (= (select (arr!8190 _keys!1895) (index!14884 lt!159518)) k!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17325 (_ BitVec 32)) SeekEntryResult!3176)

(assert (=> b!334436 (= lt!159518 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!334437 () Bool)

(declare-fun e!205291 () Bool)

(assert (=> b!334437 (= e!205291 tp_is_empty!6869)))

(declare-fun res!184477 () Bool)

(assert (=> start!33690 (=> (not res!184477) (not e!205293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33690 (= res!184477 (validMask!0 mask!2385))))

(assert (=> start!33690 e!205293))

(assert (=> start!33690 true))

(assert (=> start!33690 tp_is_empty!6869))

(assert (=> start!33690 tp!24254))

(declare-fun e!205292 () Bool)

(declare-fun array_inv!6078 (array!17327) Bool)

(assert (=> start!33690 (and (array_inv!6078 _values!1525) e!205292)))

(declare-fun array_inv!6079 (array!17325) Bool)

(assert (=> start!33690 (array_inv!6079 _keys!1895)))

(declare-fun b!334438 () Bool)

(declare-fun res!184472 () Bool)

(assert (=> b!334438 (=> (not res!184472) (not e!205295))))

(declare-fun arrayContainsKey!0 (array!17325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334438 (= res!184472 (arrayContainsKey!0 _keys!1895 k!1348 (index!14884 lt!159518)))))

(declare-fun b!334439 () Bool)

(declare-fun res!184474 () Bool)

(assert (=> b!334439 (=> (not res!184474) (not e!205293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334439 (= res!184474 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!11700 () Bool)

(declare-fun mapRes!11700 () Bool)

(declare-fun tp!24255 () Bool)

(assert (=> mapNonEmpty!11700 (= mapRes!11700 (and tp!24255 e!205291))))

(declare-fun mapValue!11700 () ValueCell!3091)

(declare-fun mapRest!11700 () (Array (_ BitVec 32) ValueCell!3091))

(declare-fun mapKey!11700 () (_ BitVec 32))

(assert (=> mapNonEmpty!11700 (= (arr!8191 _values!1525) (store mapRest!11700 mapKey!11700 mapValue!11700))))

(declare-fun b!334440 () Bool)

(assert (=> b!334440 (= e!205295 (not true))))

(assert (=> b!334440 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10404 0))(
  ( (Unit!10405) )
))
(declare-fun lt!159519 () Unit!10404)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17325 (_ BitVec 64) (_ BitVec 32)) Unit!10404)

(assert (=> b!334440 (= lt!159519 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14884 lt!159518)))))

(declare-fun mapIsEmpty!11700 () Bool)

(assert (=> mapIsEmpty!11700 mapRes!11700))

(declare-fun b!334441 () Bool)

(declare-fun res!184476 () Bool)

(assert (=> b!334441 (=> (not res!184476) (not e!205293))))

(declare-fun zeroValue!1467 () V!10135)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10135)

(declare-datatypes ((tuple2!5056 0))(
  ( (tuple2!5057 (_1!2538 (_ BitVec 64)) (_2!2538 V!10135)) )
))
(declare-datatypes ((List!4698 0))(
  ( (Nil!4695) (Cons!4694 (h!5550 tuple2!5056) (t!9794 List!4698)) )
))
(declare-datatypes ((ListLongMap!3983 0))(
  ( (ListLongMap!3984 (toList!2007 List!4698)) )
))
(declare-fun contains!2047 (ListLongMap!3983 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1530 (array!17325 array!17327 (_ BitVec 32) (_ BitVec 32) V!10135 V!10135 (_ BitVec 32) Int) ListLongMap!3983)

(assert (=> b!334441 (= res!184476 (not (contains!2047 (getCurrentListMap!1530 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!334442 () Bool)

(assert (=> b!334442 (= e!205292 (and e!205296 mapRes!11700))))

(declare-fun condMapEmpty!11700 () Bool)

(declare-fun mapDefault!11700 () ValueCell!3091)

