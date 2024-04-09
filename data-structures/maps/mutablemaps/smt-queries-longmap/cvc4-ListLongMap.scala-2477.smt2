; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38692 () Bool)

(assert start!38692)

(declare-fun b_free!9221 () Bool)

(declare-fun b_next!9221 () Bool)

(assert (=> start!38692 (= b_free!9221 (not b_next!9221))))

(declare-fun tp!32786 () Bool)

(declare-fun b_and!16625 () Bool)

(assert (=> start!38692 (= tp!32786 b_and!16625)))

(declare-fun b!401899 () Bool)

(declare-fun res!231511 () Bool)

(declare-fun e!242219 () Bool)

(assert (=> b!401899 (=> (not res!231511) (not e!242219))))

(declare-datatypes ((array!24077 0))(
  ( (array!24078 (arr!11485 (Array (_ BitVec 32) (_ BitVec 64))) (size!11837 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24077)

(declare-datatypes ((List!6649 0))(
  ( (Nil!6646) (Cons!6645 (h!7501 (_ BitVec 64)) (t!11831 List!6649)) )
))
(declare-fun arrayNoDuplicates!0 (array!24077 (_ BitVec 32) List!6649) Bool)

(assert (=> b!401899 (= res!231511 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6646))))

(declare-fun b!401901 () Bool)

(declare-fun res!231507 () Bool)

(assert (=> b!401901 (=> (not res!231507) (not e!242219))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401901 (= res!231507 (validMask!0 mask!1025))))

(declare-fun b!401902 () Bool)

(declare-fun res!231516 () Bool)

(assert (=> b!401902 (=> (not res!231516) (not e!242219))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401902 (= res!231516 (validKeyInArray!0 k!794))))

(declare-fun b!401903 () Bool)

(declare-fun res!231515 () Bool)

(assert (=> b!401903 (=> (not res!231515) (not e!242219))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14575 0))(
  ( (V!14576 (val!5096 Int)) )
))
(declare-datatypes ((ValueCell!4708 0))(
  ( (ValueCellFull!4708 (v!7339 V!14575)) (EmptyCell!4708) )
))
(declare-datatypes ((array!24079 0))(
  ( (array!24080 (arr!11486 (Array (_ BitVec 32) ValueCell!4708)) (size!11838 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24079)

(assert (=> b!401903 (= res!231515 (and (= (size!11838 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11837 _keys!709) (size!11838 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401904 () Bool)

(declare-fun e!242218 () Bool)

(assert (=> b!401904 (= e!242219 e!242218)))

(declare-fun res!231508 () Bool)

(assert (=> b!401904 (=> (not res!231508) (not e!242218))))

(declare-fun lt!187850 () array!24077)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24077 (_ BitVec 32)) Bool)

(assert (=> b!401904 (= res!231508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187850 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!401904 (= lt!187850 (array!24078 (store (arr!11485 _keys!709) i!563 k!794) (size!11837 _keys!709)))))

(declare-datatypes ((tuple2!6702 0))(
  ( (tuple2!6703 (_1!3361 (_ BitVec 64)) (_2!3361 V!14575)) )
))
(declare-datatypes ((List!6650 0))(
  ( (Nil!6647) (Cons!6646 (h!7502 tuple2!6702) (t!11832 List!6650)) )
))
(declare-datatypes ((ListLongMap!5629 0))(
  ( (ListLongMap!5630 (toList!2830 List!6650)) )
))
(declare-fun call!28324 () ListLongMap!5629)

(declare-fun b!401905 () Bool)

(declare-fun v!412 () V!14575)

(declare-fun e!242217 () Bool)

(declare-fun call!28325 () ListLongMap!5629)

(declare-fun +!1110 (ListLongMap!5629 tuple2!6702) ListLongMap!5629)

(assert (=> b!401905 (= e!242217 (= call!28325 (+!1110 call!28324 (tuple2!6703 k!794 v!412))))))

(declare-fun b!401906 () Bool)

(declare-fun res!231505 () Bool)

(assert (=> b!401906 (=> (not res!231505) (not e!242219))))

(assert (=> b!401906 (= res!231505 (or (= (select (arr!11485 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11485 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16776 () Bool)

(declare-fun mapRes!16776 () Bool)

(declare-fun tp!32787 () Bool)

(declare-fun e!242220 () Bool)

(assert (=> mapNonEmpty!16776 (= mapRes!16776 (and tp!32787 e!242220))))

(declare-fun mapValue!16776 () ValueCell!4708)

(declare-fun mapKey!16776 () (_ BitVec 32))

(declare-fun mapRest!16776 () (Array (_ BitVec 32) ValueCell!4708))

(assert (=> mapNonEmpty!16776 (= (arr!11486 _values!549) (store mapRest!16776 mapKey!16776 mapValue!16776))))

(declare-fun b!401907 () Bool)

(declare-fun res!231509 () Bool)

(assert (=> b!401907 (=> (not res!231509) (not e!242218))))

(assert (=> b!401907 (= res!231509 (arrayNoDuplicates!0 lt!187850 #b00000000000000000000000000000000 Nil!6646))))

(declare-fun b!401908 () Bool)

(declare-fun tp_is_empty!10103 () Bool)

(assert (=> b!401908 (= e!242220 tp_is_empty!10103)))

(declare-fun minValue!515 () V!14575)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14575)

(declare-fun c!54713 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun bm!28321 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1043 (array!24077 array!24079 (_ BitVec 32) (_ BitVec 32) V!14575 V!14575 (_ BitVec 32) Int) ListLongMap!5629)

(assert (=> bm!28321 (= call!28324 (getCurrentListMapNoExtraKeys!1043 (ite c!54713 _keys!709 lt!187850) (ite c!54713 _values!549 (array!24080 (store (arr!11486 _values!549) i!563 (ValueCellFull!4708 v!412)) (size!11838 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401909 () Bool)

(declare-fun res!231512 () Bool)

(assert (=> b!401909 (=> (not res!231512) (not e!242219))))

(assert (=> b!401909 (= res!231512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28322 () Bool)

(assert (=> bm!28322 (= call!28325 (getCurrentListMapNoExtraKeys!1043 (ite c!54713 lt!187850 _keys!709) (ite c!54713 (array!24080 (store (arr!11486 _values!549) i!563 (ValueCellFull!4708 v!412)) (size!11838 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401910 () Bool)

(declare-fun res!231513 () Bool)

(assert (=> b!401910 (=> (not res!231513) (not e!242218))))

(assert (=> b!401910 (= res!231513 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11837 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401911 () Bool)

(declare-fun e!242221 () Bool)

(declare-fun e!242216 () Bool)

(assert (=> b!401911 (= e!242221 (and e!242216 mapRes!16776))))

(declare-fun condMapEmpty!16776 () Bool)

(declare-fun mapDefault!16776 () ValueCell!4708)

