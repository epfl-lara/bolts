; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34440 () Bool)

(assert start!34440)

(declare-fun b_free!7355 () Bool)

(declare-fun b_next!7355 () Bool)

(assert (=> start!34440 (= b_free!7355 (not b_next!7355))))

(declare-fun tp!25610 () Bool)

(declare-fun b_and!14581 () Bool)

(assert (=> start!34440 (= tp!25610 b_and!14581)))

(declare-fun b!343637 () Bool)

(declare-fun res!190042 () Bool)

(declare-fun e!210706 () Bool)

(assert (=> b!343637 (=> (not res!190042) (not e!210706))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10719 0))(
  ( (V!10720 (val!3698 Int)) )
))
(declare-datatypes ((ValueCell!3310 0))(
  ( (ValueCellFull!3310 (v!5870 V!10719)) (EmptyCell!3310) )
))
(declare-datatypes ((array!18177 0))(
  ( (array!18178 (arr!8602 (Array (_ BitVec 32) ValueCell!3310)) (size!8954 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18177)

(declare-datatypes ((array!18179 0))(
  ( (array!18180 (arr!8603 (Array (_ BitVec 32) (_ BitVec 64))) (size!8955 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18179)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!343637 (= res!190042 (and (= (size!8954 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8955 _keys!1895) (size!8954 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12399 () Bool)

(declare-fun mapRes!12399 () Bool)

(assert (=> mapIsEmpty!12399 mapRes!12399))

(declare-fun b!343638 () Bool)

(declare-fun res!190046 () Bool)

(assert (=> b!343638 (=> (not res!190046) (not e!210706))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10719)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10719)

(declare-datatypes ((tuple2!5344 0))(
  ( (tuple2!5345 (_1!2682 (_ BitVec 64)) (_2!2682 V!10719)) )
))
(declare-datatypes ((List!4989 0))(
  ( (Nil!4986) (Cons!4985 (h!5841 tuple2!5344) (t!10113 List!4989)) )
))
(declare-datatypes ((ListLongMap!4271 0))(
  ( (ListLongMap!4272 (toList!2151 List!4989)) )
))
(declare-fun contains!2205 (ListLongMap!4271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1671 (array!18179 array!18177 (_ BitVec 32) (_ BitVec 32) V!10719 V!10719 (_ BitVec 32) Int) ListLongMap!4271)

(assert (=> b!343638 (= res!190046 (not (contains!2205 (getCurrentListMap!1671 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!343639 () Bool)

(declare-fun e!210705 () Bool)

(declare-fun tp_is_empty!7307 () Bool)

(assert (=> b!343639 (= e!210705 tp_is_empty!7307)))

(declare-fun b!343640 () Bool)

(declare-fun e!210707 () Bool)

(assert (=> b!343640 (= e!210707 tp_is_empty!7307)))

(declare-fun b!343641 () Bool)

(declare-fun res!190045 () Bool)

(assert (=> b!343641 (=> (not res!190045) (not e!210706))))

(declare-datatypes ((List!4990 0))(
  ( (Nil!4987) (Cons!4986 (h!5842 (_ BitVec 64)) (t!10114 List!4990)) )
))
(declare-fun arrayNoDuplicates!0 (array!18179 (_ BitVec 32) List!4990) Bool)

(assert (=> b!343641 (= res!190045 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4987))))

(declare-fun b!343642 () Bool)

(declare-fun res!190041 () Bool)

(assert (=> b!343642 (=> (not res!190041) (not e!210706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343642 (= res!190041 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12399 () Bool)

(declare-fun tp!25611 () Bool)

(assert (=> mapNonEmpty!12399 (= mapRes!12399 (and tp!25611 e!210707))))

(declare-fun mapRest!12399 () (Array (_ BitVec 32) ValueCell!3310))

(declare-fun mapValue!12399 () ValueCell!3310)

(declare-fun mapKey!12399 () (_ BitVec 32))

(assert (=> mapNonEmpty!12399 (= (arr!8602 _values!1525) (store mapRest!12399 mapKey!12399 mapValue!12399))))

(declare-fun b!343643 () Bool)

(declare-fun res!190043 () Bool)

(assert (=> b!343643 (=> (not res!190043) (not e!210706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18179 (_ BitVec 32)) Bool)

(assert (=> b!343643 (= res!190043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343644 () Bool)

(assert (=> b!343644 (= e!210706 false)))

(declare-datatypes ((SeekEntryResult!3319 0))(
  ( (MissingZero!3319 (index!15455 (_ BitVec 32))) (Found!3319 (index!15456 (_ BitVec 32))) (Intermediate!3319 (undefined!4131 Bool) (index!15457 (_ BitVec 32)) (x!34212 (_ BitVec 32))) (Undefined!3319) (MissingVacant!3319 (index!15458 (_ BitVec 32))) )
))
(declare-fun lt!162567 () SeekEntryResult!3319)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18179 (_ BitVec 32)) SeekEntryResult!3319)

(assert (=> b!343644 (= lt!162567 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun res!190044 () Bool)

(assert (=> start!34440 (=> (not res!190044) (not e!210706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34440 (= res!190044 (validMask!0 mask!2385))))

(assert (=> start!34440 e!210706))

(assert (=> start!34440 true))

(assert (=> start!34440 tp_is_empty!7307))

(assert (=> start!34440 tp!25610))

(declare-fun e!210704 () Bool)

(declare-fun array_inv!6362 (array!18177) Bool)

(assert (=> start!34440 (and (array_inv!6362 _values!1525) e!210704)))

(declare-fun array_inv!6363 (array!18179) Bool)

(assert (=> start!34440 (array_inv!6363 _keys!1895)))

(declare-fun b!343645 () Bool)

(assert (=> b!343645 (= e!210704 (and e!210705 mapRes!12399))))

(declare-fun condMapEmpty!12399 () Bool)

(declare-fun mapDefault!12399 () ValueCell!3310)

