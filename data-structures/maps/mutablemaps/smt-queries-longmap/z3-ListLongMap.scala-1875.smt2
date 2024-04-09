; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33694 () Bool)

(assert start!33694)

(declare-fun b_free!6921 () Bool)

(declare-fun b_next!6921 () Bool)

(assert (=> start!33694 (= b_free!6921 (not b_next!6921))))

(declare-fun tp!24266 () Bool)

(declare-fun b_and!14119 () Bool)

(assert (=> start!33694 (= tp!24266 b_and!14119)))

(declare-fun b!334498 () Bool)

(declare-fun res!184526 () Bool)

(declare-fun e!205327 () Bool)

(assert (=> b!334498 (=> (not res!184526) (not e!205327))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10141 0))(
  ( (V!10142 (val!3481 Int)) )
))
(declare-fun zeroValue!1467 () V!10141)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3093 0))(
  ( (ValueCellFull!3093 (v!5639 V!10141)) (EmptyCell!3093) )
))
(declare-datatypes ((array!17331 0))(
  ( (array!17332 (arr!8193 (Array (_ BitVec 32) ValueCell!3093)) (size!8545 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17331)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10141)

(declare-datatypes ((array!17333 0))(
  ( (array!17334 (arr!8194 (Array (_ BitVec 32) (_ BitVec 64))) (size!8546 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17333)

(declare-datatypes ((tuple2!5058 0))(
  ( (tuple2!5059 (_1!2539 (_ BitVec 64)) (_2!2539 V!10141)) )
))
(declare-datatypes ((List!4699 0))(
  ( (Nil!4696) (Cons!4695 (h!5551 tuple2!5058) (t!9795 List!4699)) )
))
(declare-datatypes ((ListLongMap!3985 0))(
  ( (ListLongMap!3986 (toList!2008 List!4699)) )
))
(declare-fun contains!2048 (ListLongMap!3985 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1531 (array!17333 array!17331 (_ BitVec 32) (_ BitVec 32) V!10141 V!10141 (_ BitVec 32) Int) ListLongMap!3985)

(assert (=> b!334498 (= res!184526 (not (contains!2048 (getCurrentListMap!1531 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!334499 () Bool)

(declare-fun res!184522 () Bool)

(assert (=> b!334499 (=> (not res!184522) (not e!205327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334499 (= res!184522 (validKeyInArray!0 k0!1348))))

(declare-fun b!334500 () Bool)

(declare-fun e!205332 () Bool)

(assert (=> b!334500 (= e!205327 e!205332)))

(declare-fun res!184521 () Bool)

(assert (=> b!334500 (=> (not res!184521) (not e!205332))))

(declare-datatypes ((SeekEntryResult!3177 0))(
  ( (MissingZero!3177 (index!14887 (_ BitVec 32))) (Found!3177 (index!14888 (_ BitVec 32))) (Intermediate!3177 (undefined!3989 Bool) (index!14889 (_ BitVec 32)) (x!33354 (_ BitVec 32))) (Undefined!3177) (MissingVacant!3177 (index!14890 (_ BitVec 32))) )
))
(declare-fun lt!159530 () SeekEntryResult!3177)

(get-info :version)

(assert (=> b!334500 (= res!184521 (and ((_ is Found!3177) lt!159530) (= (select (arr!8194 _keys!1895) (index!14888 lt!159530)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17333 (_ BitVec 32)) SeekEntryResult!3177)

(assert (=> b!334500 (= lt!159530 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!184520 () Bool)

(assert (=> start!33694 (=> (not res!184520) (not e!205327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33694 (= res!184520 (validMask!0 mask!2385))))

(assert (=> start!33694 e!205327))

(assert (=> start!33694 true))

(declare-fun tp_is_empty!6873 () Bool)

(assert (=> start!33694 tp_is_empty!6873))

(assert (=> start!33694 tp!24266))

(declare-fun e!205328 () Bool)

(declare-fun array_inv!6080 (array!17331) Bool)

(assert (=> start!33694 (and (array_inv!6080 _values!1525) e!205328)))

(declare-fun array_inv!6081 (array!17333) Bool)

(assert (=> start!33694 (array_inv!6081 _keys!1895)))

(declare-fun mapNonEmpty!11706 () Bool)

(declare-fun mapRes!11706 () Bool)

(declare-fun tp!24267 () Bool)

(declare-fun e!205330 () Bool)

(assert (=> mapNonEmpty!11706 (= mapRes!11706 (and tp!24267 e!205330))))

(declare-fun mapRest!11706 () (Array (_ BitVec 32) ValueCell!3093))

(declare-fun mapValue!11706 () ValueCell!3093)

(declare-fun mapKey!11706 () (_ BitVec 32))

(assert (=> mapNonEmpty!11706 (= (arr!8193 _values!1525) (store mapRest!11706 mapKey!11706 mapValue!11706))))

(declare-fun b!334501 () Bool)

(declare-fun res!184523 () Bool)

(assert (=> b!334501 (=> (not res!184523) (not e!205327))))

(assert (=> b!334501 (= res!184523 (and (= (size!8545 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8546 _keys!1895) (size!8545 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334502 () Bool)

(declare-fun e!205329 () Bool)

(assert (=> b!334502 (= e!205328 (and e!205329 mapRes!11706))))

(declare-fun condMapEmpty!11706 () Bool)

(declare-fun mapDefault!11706 () ValueCell!3093)

(assert (=> b!334502 (= condMapEmpty!11706 (= (arr!8193 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3093)) mapDefault!11706)))))

(declare-fun b!334503 () Bool)

(declare-fun res!184524 () Bool)

(assert (=> b!334503 (=> (not res!184524) (not e!205327))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17333 (_ BitVec 32)) Bool)

(assert (=> b!334503 (= res!184524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11706 () Bool)

(assert (=> mapIsEmpty!11706 mapRes!11706))

(declare-fun b!334504 () Bool)

(assert (=> b!334504 (= e!205332 (not true))))

(declare-fun arrayContainsKey!0 (array!17333 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334504 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10406 0))(
  ( (Unit!10407) )
))
(declare-fun lt!159531 () Unit!10406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17333 (_ BitVec 64) (_ BitVec 32)) Unit!10406)

(assert (=> b!334504 (= lt!159531 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14888 lt!159530)))))

(declare-fun b!334505 () Bool)

(assert (=> b!334505 (= e!205329 tp_is_empty!6873)))

(declare-fun b!334506 () Bool)

(declare-fun res!184519 () Bool)

(assert (=> b!334506 (=> (not res!184519) (not e!205332))))

(assert (=> b!334506 (= res!184519 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14888 lt!159530)))))

(declare-fun b!334507 () Bool)

(declare-fun res!184525 () Bool)

(assert (=> b!334507 (=> (not res!184525) (not e!205327))))

(declare-datatypes ((List!4700 0))(
  ( (Nil!4697) (Cons!4696 (h!5552 (_ BitVec 64)) (t!9796 List!4700)) )
))
(declare-fun arrayNoDuplicates!0 (array!17333 (_ BitVec 32) List!4700) Bool)

(assert (=> b!334507 (= res!184525 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4697))))

(declare-fun b!334508 () Bool)

(assert (=> b!334508 (= e!205330 tp_is_empty!6873)))

(assert (= (and start!33694 res!184520) b!334501))

(assert (= (and b!334501 res!184523) b!334503))

(assert (= (and b!334503 res!184524) b!334507))

(assert (= (and b!334507 res!184525) b!334499))

(assert (= (and b!334499 res!184522) b!334498))

(assert (= (and b!334498 res!184526) b!334500))

(assert (= (and b!334500 res!184521) b!334506))

(assert (= (and b!334506 res!184519) b!334504))

(assert (= (and b!334502 condMapEmpty!11706) mapIsEmpty!11706))

(assert (= (and b!334502 (not condMapEmpty!11706)) mapNonEmpty!11706))

(assert (= (and mapNonEmpty!11706 ((_ is ValueCellFull!3093) mapValue!11706)) b!334508))

(assert (= (and b!334502 ((_ is ValueCellFull!3093) mapDefault!11706)) b!334505))

(assert (= start!33694 b!334502))

(declare-fun m!338565 () Bool)

(assert (=> b!334503 m!338565))

(declare-fun m!338567 () Bool)

(assert (=> b!334500 m!338567))

(declare-fun m!338569 () Bool)

(assert (=> b!334500 m!338569))

(declare-fun m!338571 () Bool)

(assert (=> b!334499 m!338571))

(declare-fun m!338573 () Bool)

(assert (=> mapNonEmpty!11706 m!338573))

(declare-fun m!338575 () Bool)

(assert (=> start!33694 m!338575))

(declare-fun m!338577 () Bool)

(assert (=> start!33694 m!338577))

(declare-fun m!338579 () Bool)

(assert (=> start!33694 m!338579))

(declare-fun m!338581 () Bool)

(assert (=> b!334506 m!338581))

(declare-fun m!338583 () Bool)

(assert (=> b!334507 m!338583))

(declare-fun m!338585 () Bool)

(assert (=> b!334504 m!338585))

(declare-fun m!338587 () Bool)

(assert (=> b!334504 m!338587))

(declare-fun m!338589 () Bool)

(assert (=> b!334498 m!338589))

(assert (=> b!334498 m!338589))

(declare-fun m!338591 () Bool)

(assert (=> b!334498 m!338591))

(check-sat (not b!334503) (not b!334506) (not b!334499) (not b!334498) (not b!334507) (not mapNonEmpty!11706) (not b!334504) b_and!14119 (not b_next!6921) tp_is_empty!6873 (not start!33694) (not b!334500))
(check-sat b_and!14119 (not b_next!6921))
