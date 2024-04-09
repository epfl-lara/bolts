; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34446 () Bool)

(assert start!34446)

(declare-fun b_free!7361 () Bool)

(declare-fun b_next!7361 () Bool)

(assert (=> start!34446 (= b_free!7361 (not b_next!7361))))

(declare-fun tp!25629 () Bool)

(declare-fun b_and!14587 () Bool)

(assert (=> start!34446 (= tp!25629 b_and!14587)))

(declare-fun b!343718 () Bool)

(declare-fun res!190100 () Bool)

(declare-fun e!210751 () Bool)

(assert (=> b!343718 (=> (not res!190100) (not e!210751))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343718 (= res!190100 (validKeyInArray!0 k!1348))))

(declare-fun res!190095 () Bool)

(assert (=> start!34446 (=> (not res!190095) (not e!210751))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34446 (= res!190095 (validMask!0 mask!2385))))

(assert (=> start!34446 e!210751))

(assert (=> start!34446 true))

(declare-fun tp_is_empty!7313 () Bool)

(assert (=> start!34446 tp_is_empty!7313))

(assert (=> start!34446 tp!25629))

(declare-datatypes ((V!10727 0))(
  ( (V!10728 (val!3701 Int)) )
))
(declare-datatypes ((ValueCell!3313 0))(
  ( (ValueCellFull!3313 (v!5873 V!10727)) (EmptyCell!3313) )
))
(declare-datatypes ((array!18189 0))(
  ( (array!18190 (arr!8608 (Array (_ BitVec 32) ValueCell!3313)) (size!8960 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18189)

(declare-fun e!210749 () Bool)

(declare-fun array_inv!6368 (array!18189) Bool)

(assert (=> start!34446 (and (array_inv!6368 _values!1525) e!210749)))

(declare-datatypes ((array!18191 0))(
  ( (array!18192 (arr!8609 (Array (_ BitVec 32) (_ BitVec 64))) (size!8961 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18191)

(declare-fun array_inv!6369 (array!18191) Bool)

(assert (=> start!34446 (array_inv!6369 _keys!1895)))

(declare-fun mapIsEmpty!12408 () Bool)

(declare-fun mapRes!12408 () Bool)

(assert (=> mapIsEmpty!12408 mapRes!12408))

(declare-fun b!343719 () Bool)

(declare-fun res!190096 () Bool)

(assert (=> b!343719 (=> (not res!190096) (not e!210751))))

(declare-fun zeroValue!1467 () V!10727)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10727)

(declare-datatypes ((tuple2!5350 0))(
  ( (tuple2!5351 (_1!2685 (_ BitVec 64)) (_2!2685 V!10727)) )
))
(declare-datatypes ((List!4995 0))(
  ( (Nil!4992) (Cons!4991 (h!5847 tuple2!5350) (t!10119 List!4995)) )
))
(declare-datatypes ((ListLongMap!4277 0))(
  ( (ListLongMap!4278 (toList!2154 List!4995)) )
))
(declare-fun contains!2208 (ListLongMap!4277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1674 (array!18191 array!18189 (_ BitVec 32) (_ BitVec 32) V!10727 V!10727 (_ BitVec 32) Int) ListLongMap!4277)

(assert (=> b!343719 (= res!190096 (not (contains!2208 (getCurrentListMap!1674 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12408 () Bool)

(declare-fun tp!25628 () Bool)

(declare-fun e!210753 () Bool)

(assert (=> mapNonEmpty!12408 (= mapRes!12408 (and tp!25628 e!210753))))

(declare-fun mapRest!12408 () (Array (_ BitVec 32) ValueCell!3313))

(declare-fun mapKey!12408 () (_ BitVec 32))

(declare-fun mapValue!12408 () ValueCell!3313)

(assert (=> mapNonEmpty!12408 (= (arr!8608 _values!1525) (store mapRest!12408 mapKey!12408 mapValue!12408))))

(declare-fun b!343720 () Bool)

(declare-fun res!190097 () Bool)

(assert (=> b!343720 (=> (not res!190097) (not e!210751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18191 (_ BitVec 32)) Bool)

(assert (=> b!343720 (= res!190097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343721 () Bool)

(assert (=> b!343721 (= e!210753 tp_is_empty!7313)))

(declare-fun b!343722 () Bool)

(assert (=> b!343722 (= e!210751 false)))

(declare-datatypes ((SeekEntryResult!3322 0))(
  ( (MissingZero!3322 (index!15467 (_ BitVec 32))) (Found!3322 (index!15468 (_ BitVec 32))) (Intermediate!3322 (undefined!4134 Bool) (index!15469 (_ BitVec 32)) (x!34223 (_ BitVec 32))) (Undefined!3322) (MissingVacant!3322 (index!15470 (_ BitVec 32))) )
))
(declare-fun lt!162576 () SeekEntryResult!3322)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18191 (_ BitVec 32)) SeekEntryResult!3322)

(assert (=> b!343722 (= lt!162576 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!343723 () Bool)

(declare-fun res!190098 () Bool)

(assert (=> b!343723 (=> (not res!190098) (not e!210751))))

(declare-datatypes ((List!4996 0))(
  ( (Nil!4993) (Cons!4992 (h!5848 (_ BitVec 64)) (t!10120 List!4996)) )
))
(declare-fun arrayNoDuplicates!0 (array!18191 (_ BitVec 32) List!4996) Bool)

(assert (=> b!343723 (= res!190098 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4993))))

(declare-fun b!343724 () Bool)

(declare-fun res!190099 () Bool)

(assert (=> b!343724 (=> (not res!190099) (not e!210751))))

(assert (=> b!343724 (= res!190099 (and (= (size!8960 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8961 _keys!1895) (size!8960 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!343725 () Bool)

(declare-fun e!210750 () Bool)

(assert (=> b!343725 (= e!210749 (and e!210750 mapRes!12408))))

(declare-fun condMapEmpty!12408 () Bool)

(declare-fun mapDefault!12408 () ValueCell!3313)

