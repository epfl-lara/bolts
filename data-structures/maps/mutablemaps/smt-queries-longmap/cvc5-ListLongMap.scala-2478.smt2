; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38694 () Bool)

(assert start!38694)

(declare-fun b_free!9223 () Bool)

(declare-fun b_next!9223 () Bool)

(assert (=> start!38694 (= b_free!9223 (not b_next!9223))))

(declare-fun tp!32793 () Bool)

(declare-fun b_and!16627 () Bool)

(assert (=> start!38694 (= tp!32793 b_and!16627)))

(declare-fun b!401950 () Bool)

(declare-fun res!231544 () Bool)

(declare-fun e!242238 () Bool)

(assert (=> b!401950 (=> (not res!231544) (not e!242238))))

(declare-datatypes ((array!24081 0))(
  ( (array!24082 (arr!11487 (Array (_ BitVec 32) (_ BitVec 64))) (size!11839 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24081)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!401950 (= res!231544 (or (= (select (arr!11487 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11487 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!242242 () Bool)

(declare-datatypes ((V!14579 0))(
  ( (V!14580 (val!5097 Int)) )
))
(declare-datatypes ((tuple2!6704 0))(
  ( (tuple2!6705 (_1!3362 (_ BitVec 64)) (_2!3362 V!14579)) )
))
(declare-datatypes ((List!6651 0))(
  ( (Nil!6648) (Cons!6647 (h!7503 tuple2!6704) (t!11833 List!6651)) )
))
(declare-datatypes ((ListLongMap!5631 0))(
  ( (ListLongMap!5632 (toList!2831 List!6651)) )
))
(declare-fun call!28330 () ListLongMap!5631)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!14579)

(declare-fun call!28331 () ListLongMap!5631)

(declare-fun b!401951 () Bool)

(declare-fun +!1111 (ListLongMap!5631 tuple2!6704) ListLongMap!5631)

(assert (=> b!401951 (= e!242242 (= call!28331 (+!1111 call!28330 (tuple2!6705 k!794 v!412))))))

(declare-fun b!401952 () Bool)

(declare-fun res!231552 () Bool)

(assert (=> b!401952 (=> (not res!231552) (not e!242238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401952 (= res!231552 (validKeyInArray!0 k!794))))

(declare-fun b!401953 () Bool)

(declare-fun e!242236 () Bool)

(assert (=> b!401953 (= e!242236 (not true))))

(assert (=> b!401953 e!242242))

(declare-fun c!54716 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!401953 (= c!54716 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14579)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4709 0))(
  ( (ValueCellFull!4709 (v!7340 V!14579)) (EmptyCell!4709) )
))
(declare-datatypes ((array!24083 0))(
  ( (array!24084 (arr!11488 (Array (_ BitVec 32) ValueCell!4709)) (size!11840 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24083)

(declare-fun zeroValue!515 () V!14579)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12119 0))(
  ( (Unit!12120) )
))
(declare-fun lt!187857 () Unit!12119)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!322 (array!24081 array!24083 (_ BitVec 32) (_ BitVec 32) V!14579 V!14579 (_ BitVec 32) (_ BitVec 64) V!14579 (_ BitVec 32) Int) Unit!12119)

(assert (=> b!401953 (= lt!187857 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!322 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16779 () Bool)

(declare-fun mapRes!16779 () Bool)

(assert (=> mapIsEmpty!16779 mapRes!16779))

(declare-fun b!401954 () Bool)

(declare-fun res!231548 () Bool)

(assert (=> b!401954 (=> (not res!231548) (not e!242236))))

(assert (=> b!401954 (= res!231548 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11839 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401956 () Bool)

(declare-fun res!231541 () Bool)

(assert (=> b!401956 (=> (not res!231541) (not e!242238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24081 (_ BitVec 32)) Bool)

(assert (=> b!401956 (= res!231541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401957 () Bool)

(declare-fun e!242237 () Bool)

(declare-fun tp_is_empty!10105 () Bool)

(assert (=> b!401957 (= e!242237 tp_is_empty!10105)))

(declare-fun b!401958 () Bool)

(assert (=> b!401958 (= e!242238 e!242236)))

(declare-fun res!231547 () Bool)

(assert (=> b!401958 (=> (not res!231547) (not e!242236))))

(declare-fun lt!187856 () array!24081)

(assert (=> b!401958 (= res!231547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187856 mask!1025))))

(assert (=> b!401958 (= lt!187856 (array!24082 (store (arr!11487 _keys!709) i!563 k!794) (size!11839 _keys!709)))))

(declare-fun mapNonEmpty!16779 () Bool)

(declare-fun tp!32792 () Bool)

(declare-fun e!242240 () Bool)

(assert (=> mapNonEmpty!16779 (= mapRes!16779 (and tp!32792 e!242240))))

(declare-fun mapValue!16779 () ValueCell!4709)

(declare-fun mapKey!16779 () (_ BitVec 32))

(declare-fun mapRest!16779 () (Array (_ BitVec 32) ValueCell!4709))

(assert (=> mapNonEmpty!16779 (= (arr!11488 _values!549) (store mapRest!16779 mapKey!16779 mapValue!16779))))

(declare-fun b!401959 () Bool)

(assert (=> b!401959 (= e!242242 (= call!28330 call!28331))))

(declare-fun b!401960 () Bool)

(declare-fun res!231549 () Bool)

(assert (=> b!401960 (=> (not res!231549) (not e!242238))))

(declare-fun arrayContainsKey!0 (array!24081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401960 (= res!231549 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun bm!28327 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1044 (array!24081 array!24083 (_ BitVec 32) (_ BitVec 32) V!14579 V!14579 (_ BitVec 32) Int) ListLongMap!5631)

(assert (=> bm!28327 (= call!28330 (getCurrentListMapNoExtraKeys!1044 (ite c!54716 _keys!709 lt!187856) (ite c!54716 _values!549 (array!24084 (store (arr!11488 _values!549) i!563 (ValueCellFull!4709 v!412)) (size!11840 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28328 () Bool)

(assert (=> bm!28328 (= call!28331 (getCurrentListMapNoExtraKeys!1044 (ite c!54716 lt!187856 _keys!709) (ite c!54716 (array!24084 (store (arr!11488 _values!549) i!563 (ValueCellFull!4709 v!412)) (size!11840 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401961 () Bool)

(declare-fun res!231551 () Bool)

(assert (=> b!401961 (=> (not res!231551) (not e!242238))))

(declare-datatypes ((List!6652 0))(
  ( (Nil!6649) (Cons!6648 (h!7504 (_ BitVec 64)) (t!11834 List!6652)) )
))
(declare-fun arrayNoDuplicates!0 (array!24081 (_ BitVec 32) List!6652) Bool)

(assert (=> b!401961 (= res!231551 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6649))))

(declare-fun b!401962 () Bool)

(declare-fun res!231543 () Bool)

(assert (=> b!401962 (=> (not res!231543) (not e!242238))))

(assert (=> b!401962 (= res!231543 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11839 _keys!709))))))

(declare-fun b!401955 () Bool)

(declare-fun res!231546 () Bool)

(assert (=> b!401955 (=> (not res!231546) (not e!242236))))

(assert (=> b!401955 (= res!231546 (arrayNoDuplicates!0 lt!187856 #b00000000000000000000000000000000 Nil!6649))))

(declare-fun res!231542 () Bool)

(assert (=> start!38694 (=> (not res!231542) (not e!242238))))

(assert (=> start!38694 (= res!231542 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11839 _keys!709))))))

(assert (=> start!38694 e!242238))

(assert (=> start!38694 tp_is_empty!10105))

(assert (=> start!38694 tp!32793))

(assert (=> start!38694 true))

(declare-fun e!242241 () Bool)

(declare-fun array_inv!8398 (array!24083) Bool)

(assert (=> start!38694 (and (array_inv!8398 _values!549) e!242241)))

(declare-fun array_inv!8399 (array!24081) Bool)

(assert (=> start!38694 (array_inv!8399 _keys!709)))

(declare-fun b!401963 () Bool)

(declare-fun res!231545 () Bool)

(assert (=> b!401963 (=> (not res!231545) (not e!242238))))

(assert (=> b!401963 (= res!231545 (and (= (size!11840 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11839 _keys!709) (size!11840 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401964 () Bool)

(assert (=> b!401964 (= e!242240 tp_is_empty!10105)))

(declare-fun b!401965 () Bool)

(declare-fun res!231550 () Bool)

(assert (=> b!401965 (=> (not res!231550) (not e!242238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401965 (= res!231550 (validMask!0 mask!1025))))

(declare-fun b!401966 () Bool)

(assert (=> b!401966 (= e!242241 (and e!242237 mapRes!16779))))

(declare-fun condMapEmpty!16779 () Bool)

(declare-fun mapDefault!16779 () ValueCell!4709)

