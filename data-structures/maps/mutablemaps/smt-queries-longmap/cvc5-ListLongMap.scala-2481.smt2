; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38712 () Bool)

(assert start!38712)

(declare-fun b_free!9241 () Bool)

(declare-fun b_next!9241 () Bool)

(assert (=> start!38712 (= b_free!9241 (not b_next!9241))))

(declare-fun tp!32846 () Bool)

(declare-fun b_and!16645 () Bool)

(assert (=> start!38712 (= tp!32846 b_and!16645)))

(declare-datatypes ((V!14603 0))(
  ( (V!14604 (val!5106 Int)) )
))
(declare-fun minValue!515 () V!14603)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!4718 0))(
  ( (ValueCellFull!4718 (v!7349 V!14603)) (EmptyCell!4718) )
))
(declare-datatypes ((array!24117 0))(
  ( (array!24118 (arr!11505 (Array (_ BitVec 32) ValueCell!4718)) (size!11857 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24117)

(declare-fun bm!28381 () Bool)

(declare-fun c!54743 () Bool)

(declare-fun zeroValue!515 () V!14603)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!14603)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6722 0))(
  ( (tuple2!6723 (_1!3371 (_ BitVec 64)) (_2!3371 V!14603)) )
))
(declare-datatypes ((List!6668 0))(
  ( (Nil!6665) (Cons!6664 (h!7520 tuple2!6722) (t!11850 List!6668)) )
))
(declare-datatypes ((ListLongMap!5649 0))(
  ( (ListLongMap!5650 (toList!2840 List!6668)) )
))
(declare-fun call!28385 () ListLongMap!5649)

(declare-datatypes ((array!24119 0))(
  ( (array!24120 (arr!11506 (Array (_ BitVec 32) (_ BitVec 64))) (size!11858 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24119)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!187911 () array!24119)

(declare-fun getCurrentListMapNoExtraKeys!1051 (array!24119 array!24117 (_ BitVec 32) (_ BitVec 32) V!14603 V!14603 (_ BitVec 32) Int) ListLongMap!5649)

(assert (=> bm!28381 (= call!28385 (getCurrentListMapNoExtraKeys!1051 (ite c!54743 lt!187911 _keys!709) (ite c!54743 (array!24118 (store (arr!11505 _values!549) i!563 (ValueCellFull!4718 v!412)) (size!11857 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402409 () Bool)

(declare-fun res!231868 () Bool)

(declare-fun e!242426 () Bool)

(assert (=> b!402409 (=> (not res!231868) (not e!242426))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402409 (= res!231868 (validKeyInArray!0 k!794))))

(declare-fun b!402410 () Bool)

(declare-fun e!242428 () Bool)

(declare-fun tp_is_empty!10123 () Bool)

(assert (=> b!402410 (= e!242428 tp_is_empty!10123)))

(declare-fun e!242425 () Bool)

(declare-fun call!28384 () ListLongMap!5649)

(declare-fun b!402411 () Bool)

(declare-fun +!1118 (ListLongMap!5649 tuple2!6722) ListLongMap!5649)

(assert (=> b!402411 (= e!242425 (= call!28385 (+!1118 call!28384 (tuple2!6723 k!794 v!412))))))

(declare-fun b!402412 () Bool)

(declare-fun res!231866 () Bool)

(assert (=> b!402412 (=> (not res!231866) (not e!242426))))

(assert (=> b!402412 (= res!231866 (and (= (size!11857 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11858 _keys!709) (size!11857 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402413 () Bool)

(declare-fun e!242430 () Bool)

(assert (=> b!402413 (= e!242430 (not true))))

(assert (=> b!402413 e!242425))

(assert (=> b!402413 (= c!54743 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12133 0))(
  ( (Unit!12134) )
))
(declare-fun lt!187910 () Unit!12133)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!329 (array!24119 array!24117 (_ BitVec 32) (_ BitVec 32) V!14603 V!14603 (_ BitVec 32) (_ BitVec 64) V!14603 (_ BitVec 32) Int) Unit!12133)

(assert (=> b!402413 (= lt!187910 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!329 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402414 () Bool)

(declare-fun e!242431 () Bool)

(assert (=> b!402414 (= e!242431 tp_is_empty!10123)))

(declare-fun b!402415 () Bool)

(declare-fun res!231865 () Bool)

(assert (=> b!402415 (=> (not res!231865) (not e!242426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402415 (= res!231865 (validMask!0 mask!1025))))

(declare-fun b!402416 () Bool)

(declare-fun res!231867 () Bool)

(assert (=> b!402416 (=> (not res!231867) (not e!242426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24119 (_ BitVec 32)) Bool)

(assert (=> b!402416 (= res!231867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402417 () Bool)

(declare-fun res!231872 () Bool)

(assert (=> b!402417 (=> (not res!231872) (not e!242426))))

(assert (=> b!402417 (= res!231872 (or (= (select (arr!11506 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11506 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402418 () Bool)

(assert (=> b!402418 (= e!242425 (= call!28384 call!28385))))

(declare-fun res!231869 () Bool)

(assert (=> start!38712 (=> (not res!231869) (not e!242426))))

(assert (=> start!38712 (= res!231869 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11858 _keys!709))))))

(assert (=> start!38712 e!242426))

(assert (=> start!38712 tp_is_empty!10123))

(assert (=> start!38712 tp!32846))

(assert (=> start!38712 true))

(declare-fun e!242429 () Bool)

(declare-fun array_inv!8408 (array!24117) Bool)

(assert (=> start!38712 (and (array_inv!8408 _values!549) e!242429)))

(declare-fun array_inv!8409 (array!24119) Bool)

(assert (=> start!38712 (array_inv!8409 _keys!709)))

(declare-fun b!402419 () Bool)

(declare-fun mapRes!16806 () Bool)

(assert (=> b!402419 (= e!242429 (and e!242431 mapRes!16806))))

(declare-fun condMapEmpty!16806 () Bool)

(declare-fun mapDefault!16806 () ValueCell!4718)

