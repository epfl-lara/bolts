; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34240 () Bool)

(assert start!34240)

(declare-fun b_free!7255 () Bool)

(declare-fun b_next!7255 () Bool)

(assert (=> start!34240 (= b_free!7255 (not b_next!7255))))

(declare-fun tp!25298 () Bool)

(declare-fun b_and!14473 () Bool)

(assert (=> start!34240 (= tp!25298 b_and!14473)))

(declare-fun res!188791 () Bool)

(declare-fun e!209350 () Bool)

(assert (=> start!34240 (=> (not res!188791) (not e!209350))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34240 (= res!188791 (validMask!0 mask!2385))))

(assert (=> start!34240 e!209350))

(assert (=> start!34240 true))

(declare-fun tp_is_empty!7207 () Bool)

(assert (=> start!34240 tp_is_empty!7207))

(assert (=> start!34240 tp!25298))

(declare-datatypes ((V!10587 0))(
  ( (V!10588 (val!3648 Int)) )
))
(declare-datatypes ((ValueCell!3260 0))(
  ( (ValueCellFull!3260 (v!5816 V!10587)) (EmptyCell!3260) )
))
(declare-datatypes ((array!17979 0))(
  ( (array!17980 (arr!8507 (Array (_ BitVec 32) ValueCell!3260)) (size!8859 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17979)

(declare-fun e!209346 () Bool)

(declare-fun array_inv!6294 (array!17979) Bool)

(assert (=> start!34240 (and (array_inv!6294 _values!1525) e!209346)))

(declare-datatypes ((array!17981 0))(
  ( (array!17982 (arr!8508 (Array (_ BitVec 32) (_ BitVec 64))) (size!8860 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17981)

(declare-fun array_inv!6295 (array!17981) Bool)

(assert (=> start!34240 (array_inv!6295 _keys!1895)))

(declare-fun b!341350 () Bool)

(declare-fun res!188787 () Bool)

(assert (=> b!341350 (=> (not res!188787) (not e!209350))))

(declare-datatypes ((List!4917 0))(
  ( (Nil!4914) (Cons!4913 (h!5769 (_ BitVec 64)) (t!10033 List!4917)) )
))
(declare-fun arrayNoDuplicates!0 (array!17981 (_ BitVec 32) List!4917) Bool)

(assert (=> b!341350 (= res!188787 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4914))))

(declare-fun b!341351 () Bool)

(declare-datatypes ((Unit!10598 0))(
  ( (Unit!10599) )
))
(declare-fun e!209352 () Unit!10598)

(declare-fun Unit!10600 () Unit!10598)

(assert (=> b!341351 (= e!209352 Unit!10600)))

(declare-fun b!341352 () Bool)

(declare-fun e!209348 () Bool)

(assert (=> b!341352 (= e!209348 false)))

(declare-fun lt!161754 () Unit!10598)

(assert (=> b!341352 (= lt!161754 e!209352)))

(declare-fun c!52607 () Bool)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341352 (= c!52607 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12237 () Bool)

(declare-fun mapRes!12237 () Bool)

(assert (=> mapIsEmpty!12237 mapRes!12237))

(declare-fun b!341353 () Bool)

(declare-fun res!188789 () Bool)

(assert (=> b!341353 (=> (not res!188789) (not e!209350))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341353 (= res!188789 (and (= (size!8859 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8860 _keys!1895) (size!8859 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341354 () Bool)

(declare-fun e!209349 () Bool)

(assert (=> b!341354 (= e!209349 tp_is_empty!7207)))

(declare-fun b!341355 () Bool)

(declare-fun res!188790 () Bool)

(assert (=> b!341355 (=> (not res!188790) (not e!209350))))

(declare-fun zeroValue!1467 () V!10587)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10587)

(declare-datatypes ((tuple2!5274 0))(
  ( (tuple2!5275 (_1!2647 (_ BitVec 64)) (_2!2647 V!10587)) )
))
(declare-datatypes ((List!4918 0))(
  ( (Nil!4915) (Cons!4914 (h!5770 tuple2!5274) (t!10034 List!4918)) )
))
(declare-datatypes ((ListLongMap!4201 0))(
  ( (ListLongMap!4202 (toList!2116 List!4918)) )
))
(declare-fun contains!2166 (ListLongMap!4201 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1636 (array!17981 array!17979 (_ BitVec 32) (_ BitVec 32) V!10587 V!10587 (_ BitVec 32) Int) ListLongMap!4201)

(assert (=> b!341355 (= res!188790 (not (contains!2166 (getCurrentListMap!1636 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12237 () Bool)

(declare-fun tp!25299 () Bool)

(declare-fun e!209347 () Bool)

(assert (=> mapNonEmpty!12237 (= mapRes!12237 (and tp!25299 e!209347))))

(declare-fun mapValue!12237 () ValueCell!3260)

(declare-fun mapKey!12237 () (_ BitVec 32))

(declare-fun mapRest!12237 () (Array (_ BitVec 32) ValueCell!3260))

(assert (=> mapNonEmpty!12237 (= (arr!8507 _values!1525) (store mapRest!12237 mapKey!12237 mapValue!12237))))

(declare-fun b!341356 () Bool)

(assert (=> b!341356 (= e!209347 tp_is_empty!7207)))

(declare-fun b!341357 () Bool)

(declare-fun Unit!10601 () Unit!10598)

(assert (=> b!341357 (= e!209352 Unit!10601)))

(declare-fun lt!161752 () Unit!10598)

(declare-fun lemmaArrayContainsKeyThenInListMap!288 (array!17981 array!17979 (_ BitVec 32) (_ BitVec 32) V!10587 V!10587 (_ BitVec 64) (_ BitVec 32) Int) Unit!10598)

(declare-fun arrayScanForKey!0 (array!17981 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341357 (= lt!161752 (lemmaArrayContainsKeyThenInListMap!288 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341357 false))

(declare-fun b!341358 () Bool)

(declare-fun res!188786 () Bool)

(assert (=> b!341358 (=> (not res!188786) (not e!209350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341358 (= res!188786 (validKeyInArray!0 k!1348))))

(declare-fun b!341359 () Bool)

(declare-fun res!188788 () Bool)

(assert (=> b!341359 (=> (not res!188788) (not e!209350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17981 (_ BitVec 32)) Bool)

(assert (=> b!341359 (= res!188788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341360 () Bool)

(assert (=> b!341360 (= e!209346 (and e!209349 mapRes!12237))))

(declare-fun condMapEmpty!12237 () Bool)

(declare-fun mapDefault!12237 () ValueCell!3260)

