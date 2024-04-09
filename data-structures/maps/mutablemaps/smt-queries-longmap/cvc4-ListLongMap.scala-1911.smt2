; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34042 () Bool)

(assert start!34042)

(declare-fun b_free!7139 () Bool)

(declare-fun b_next!7139 () Bool)

(assert (=> start!34042 (= b_free!7139 (not b_next!7139))))

(declare-fun tp!24938 () Bool)

(declare-fun b_and!14349 () Bool)

(assert (=> start!34042 (= tp!24938 b_and!14349)))

(declare-fun b!338950 () Bool)

(declare-fun e!207972 () Bool)

(declare-fun e!207969 () Bool)

(assert (=> b!338950 (= e!207972 e!207969)))

(declare-fun res!187303 () Bool)

(assert (=> b!338950 (=> (not res!187303) (not e!207969))))

(declare-fun lt!161031 () Bool)

(assert (=> b!338950 (= res!187303 (not lt!161031))))

(declare-datatypes ((Unit!10550 0))(
  ( (Unit!10551) )
))
(declare-fun lt!161028 () Unit!10550)

(declare-fun e!207968 () Unit!10550)

(assert (=> b!338950 (= lt!161028 e!207968)))

(declare-fun c!52430 () Bool)

(assert (=> b!338950 (= c!52430 lt!161031)))

(declare-datatypes ((array!17751 0))(
  ( (array!17752 (arr!8397 (Array (_ BitVec 32) (_ BitVec 64))) (size!8749 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17751)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338950 (= lt!161031 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!338951 () Bool)

(declare-fun e!207973 () Bool)

(declare-fun tp_is_empty!7091 () Bool)

(assert (=> b!338951 (= e!207973 tp_is_empty!7091)))

(declare-fun b!338952 () Bool)

(declare-fun e!207975 () Bool)

(assert (=> b!338952 (= e!207975 tp_is_empty!7091)))

(declare-fun b!338953 () Bool)

(declare-fun res!187309 () Bool)

(declare-fun e!207971 () Bool)

(assert (=> b!338953 (=> (not res!187309) (not e!207971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338953 (= res!187309 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!12051 () Bool)

(declare-fun mapRes!12051 () Bool)

(assert (=> mapIsEmpty!12051 mapRes!12051))

(declare-fun b!338954 () Bool)

(declare-fun Unit!10552 () Unit!10550)

(assert (=> b!338954 (= e!207968 Unit!10552)))

(declare-fun lt!161030 () Unit!10550)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10431 0))(
  ( (V!10432 (val!3590 Int)) )
))
(declare-fun zeroValue!1467 () V!10431)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10431)

(declare-datatypes ((ValueCell!3202 0))(
  ( (ValueCellFull!3202 (v!5754 V!10431)) (EmptyCell!3202) )
))
(declare-datatypes ((array!17753 0))(
  ( (array!17754 (arr!8398 (Array (_ BitVec 32) ValueCell!3202)) (size!8750 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17753)

(declare-fun lemmaArrayContainsKeyThenInListMap!280 (array!17751 array!17753 (_ BitVec 32) (_ BitVec 32) V!10431 V!10431 (_ BitVec 64) (_ BitVec 32) Int) Unit!10550)

(declare-fun arrayScanForKey!0 (array!17751 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338954 (= lt!161030 (lemmaArrayContainsKeyThenInListMap!280 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338954 false))

(declare-fun b!338955 () Bool)

(declare-fun res!187310 () Bool)

(assert (=> b!338955 (=> (not res!187310) (not e!207971))))

(declare-datatypes ((List!4845 0))(
  ( (Nil!4842) (Cons!4841 (h!5697 (_ BitVec 64)) (t!9953 List!4845)) )
))
(declare-fun arrayNoDuplicates!0 (array!17751 (_ BitVec 32) List!4845) Bool)

(assert (=> b!338955 (= res!187310 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4842))))

(declare-fun b!338956 () Bool)

(declare-fun Unit!10553 () Unit!10550)

(assert (=> b!338956 (= e!207968 Unit!10553)))

(declare-fun b!338957 () Bool)

(declare-datatypes ((SeekEntryResult!3250 0))(
  ( (MissingZero!3250 (index!15179 (_ BitVec 32))) (Found!3250 (index!15180 (_ BitVec 32))) (Intermediate!3250 (undefined!4062 Bool) (index!15181 (_ BitVec 32)) (x!33775 (_ BitVec 32))) (Undefined!3250) (MissingVacant!3250 (index!15182 (_ BitVec 32))) )
))
(declare-fun lt!161029 () SeekEntryResult!3250)

(assert (=> b!338957 (= e!207969 (and (= (select (arr!8397 _keys!1895) (index!15179 lt!161029)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8749 _keys!1895)) (bvsge (size!8749 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun b!338958 () Bool)

(declare-fun res!187308 () Bool)

(assert (=> b!338958 (=> (not res!187308) (not e!207971))))

(assert (=> b!338958 (= res!187308 (and (= (size!8750 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8749 _keys!1895) (size!8750 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338959 () Bool)

(assert (=> b!338959 (= e!207971 e!207972)))

(declare-fun res!187302 () Bool)

(assert (=> b!338959 (=> (not res!187302) (not e!207972))))

(assert (=> b!338959 (= res!187302 (and (not (is-Found!3250 lt!161029)) (is-MissingZero!3250 lt!161029)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17751 (_ BitVec 32)) SeekEntryResult!3250)

(assert (=> b!338959 (= lt!161029 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12051 () Bool)

(declare-fun tp!24939 () Bool)

(assert (=> mapNonEmpty!12051 (= mapRes!12051 (and tp!24939 e!207975))))

(declare-fun mapRest!12051 () (Array (_ BitVec 32) ValueCell!3202))

(declare-fun mapKey!12051 () (_ BitVec 32))

(declare-fun mapValue!12051 () ValueCell!3202)

(assert (=> mapNonEmpty!12051 (= (arr!8398 _values!1525) (store mapRest!12051 mapKey!12051 mapValue!12051))))

(declare-fun b!338960 () Bool)

(declare-fun e!207974 () Bool)

(assert (=> b!338960 (= e!207974 (and e!207973 mapRes!12051))))

(declare-fun condMapEmpty!12051 () Bool)

(declare-fun mapDefault!12051 () ValueCell!3202)

