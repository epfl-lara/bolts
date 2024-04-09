; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40820 () Bool)

(assert start!40820)

(declare-fun b_free!10801 () Bool)

(declare-fun b_next!10801 () Bool)

(assert (=> start!40820 (= b_free!10801 (not b_next!10801))))

(declare-fun tp!38225 () Bool)

(declare-fun b_and!18907 () Bool)

(assert (=> start!40820 (= tp!38225 b_and!18907)))

(declare-fun b!452807 () Bool)

(declare-fun e!265061 () Bool)

(declare-fun tp_is_empty!12139 () Bool)

(assert (=> b!452807 (= e!265061 tp_is_empty!12139)))

(declare-fun b!452808 () Bool)

(declare-fun res!269847 () Bool)

(declare-fun e!265062 () Bool)

(assert (=> b!452808 (=> (not res!269847) (not e!265062))))

(declare-datatypes ((array!28045 0))(
  ( (array!28046 (arr!13464 (Array (_ BitVec 32) (_ BitVec 64))) (size!13816 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28045)

(declare-datatypes ((List!8102 0))(
  ( (Nil!8099) (Cons!8098 (h!8954 (_ BitVec 64)) (t!13934 List!8102)) )
))
(declare-fun arrayNoDuplicates!0 (array!28045 (_ BitVec 32) List!8102) Bool)

(assert (=> b!452808 (= res!269847 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8099))))

(declare-fun b!452809 () Bool)

(declare-fun res!269846 () Bool)

(assert (=> b!452809 (=> (not res!269846) (not e!265062))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452809 (= res!269846 (validMask!0 mask!1025))))

(declare-fun b!452810 () Bool)

(declare-fun res!269845 () Bool)

(assert (=> b!452810 (=> (not res!269845) (not e!265062))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452810 (= res!269845 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-datatypes ((V!17291 0))(
  ( (V!17292 (val!6114 Int)) )
))
(declare-datatypes ((tuple2!8000 0))(
  ( (tuple2!8001 (_1!4010 (_ BitVec 64)) (_2!4010 V!17291)) )
))
(declare-datatypes ((List!8103 0))(
  ( (Nil!8100) (Cons!8099 (h!8955 tuple2!8000) (t!13935 List!8103)) )
))
(declare-datatypes ((ListLongMap!6927 0))(
  ( (ListLongMap!6928 (toList!3479 List!8103)) )
))
(declare-fun call!30013 () ListLongMap!6927)

(declare-fun minValue!515 () V!17291)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5726 0))(
  ( (ValueCellFull!5726 (v!8369 V!17291)) (EmptyCell!5726) )
))
(declare-datatypes ((array!28047 0))(
  ( (array!28048 (arr!13465 (Array (_ BitVec 32) ValueCell!5726)) (size!13817 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28047)

(declare-fun lt!205522 () array!28045)

(declare-fun zeroValue!515 () V!17291)

(declare-fun bm!30010 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!205523 () array!28047)

(declare-fun c!56075 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1655 (array!28045 array!28047 (_ BitVec 32) (_ BitVec 32) V!17291 V!17291 (_ BitVec 32) Int) ListLongMap!6927)

(assert (=> bm!30010 (= call!30013 (getCurrentListMapNoExtraKeys!1655 (ite c!56075 lt!205522 _keys!709) (ite c!56075 lt!205523 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19845 () Bool)

(declare-fun mapRes!19845 () Bool)

(assert (=> mapIsEmpty!19845 mapRes!19845))

(declare-fun res!269852 () Bool)

(assert (=> start!40820 (=> (not res!269852) (not e!265062))))

(assert (=> start!40820 (= res!269852 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13816 _keys!709))))))

(assert (=> start!40820 e!265062))

(assert (=> start!40820 tp_is_empty!12139))

(assert (=> start!40820 tp!38225))

(assert (=> start!40820 true))

(declare-fun e!265060 () Bool)

(declare-fun array_inv!9748 (array!28047) Bool)

(assert (=> start!40820 (and (array_inv!9748 _values!549) e!265060)))

(declare-fun array_inv!9749 (array!28045) Bool)

(assert (=> start!40820 (array_inv!9749 _keys!709)))

(declare-fun b!452811 () Bool)

(declare-fun res!269848 () Bool)

(assert (=> b!452811 (=> (not res!269848) (not e!265062))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452811 (= res!269848 (or (= (select (arr!13464 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13464 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452812 () Bool)

(declare-fun e!265064 () Bool)

(assert (=> b!452812 (= e!265062 e!265064)))

(declare-fun res!269849 () Bool)

(assert (=> b!452812 (=> (not res!269849) (not e!265064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28045 (_ BitVec 32)) Bool)

(assert (=> b!452812 (= res!269849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205522 mask!1025))))

(assert (=> b!452812 (= lt!205522 (array!28046 (store (arr!13464 _keys!709) i!563 k!794) (size!13816 _keys!709)))))

(declare-fun b!452813 () Bool)

(declare-fun res!269850 () Bool)

(assert (=> b!452813 (=> (not res!269850) (not e!265062))))

(assert (=> b!452813 (= res!269850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun call!30014 () ListLongMap!6927)

(declare-fun b!452814 () Bool)

(declare-fun e!265068 () Bool)

(declare-fun v!412 () V!17291)

(declare-fun +!1544 (ListLongMap!6927 tuple2!8000) ListLongMap!6927)

(assert (=> b!452814 (= e!265068 (= call!30013 (+!1544 call!30014 (tuple2!8001 k!794 v!412))))))

(declare-fun b!452815 () Bool)

(declare-fun res!269841 () Bool)

(assert (=> b!452815 (=> (not res!269841) (not e!265064))))

(assert (=> b!452815 (= res!269841 (bvsle from!863 i!563))))

(declare-fun b!452816 () Bool)

(declare-fun res!269851 () Bool)

(assert (=> b!452816 (=> (not res!269851) (not e!265062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452816 (= res!269851 (validKeyInArray!0 k!794))))

(declare-fun b!452817 () Bool)

(assert (=> b!452817 (= e!265068 (= call!30014 call!30013))))

(declare-fun b!452818 () Bool)

(declare-fun e!265065 () Bool)

(assert (=> b!452818 (= e!265060 (and e!265065 mapRes!19845))))

(declare-fun condMapEmpty!19845 () Bool)

(declare-fun mapDefault!19845 () ValueCell!5726)

