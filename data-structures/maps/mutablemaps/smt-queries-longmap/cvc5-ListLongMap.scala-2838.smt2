; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41000 () Bool)

(assert start!41000)

(declare-fun b_free!10927 () Bool)

(declare-fun b_next!10927 () Bool)

(assert (=> start!41000 (= b_free!10927 (not b_next!10927))))

(declare-fun tp!38608 () Bool)

(declare-fun b_and!19087 () Bool)

(assert (=> start!41000 (= tp!38608 b_and!19087)))

(declare-fun mapIsEmpty!20038 () Bool)

(declare-fun mapRes!20038 () Bool)

(assert (=> mapIsEmpty!20038 mapRes!20038))

(declare-fun b!456298 () Bool)

(declare-fun res!272374 () Bool)

(declare-fun e!266600 () Bool)

(assert (=> b!456298 (=> (not res!272374) (not e!266600))))

(declare-datatypes ((array!28297 0))(
  ( (array!28298 (arr!13589 (Array (_ BitVec 32) (_ BitVec 64))) (size!13941 (_ BitVec 32))) )
))
(declare-fun lt!206531 () array!28297)

(declare-datatypes ((List!8201 0))(
  ( (Nil!8198) (Cons!8197 (h!9053 (_ BitVec 64)) (t!14037 List!8201)) )
))
(declare-fun arrayNoDuplicates!0 (array!28297 (_ BitVec 32) List!8201) Bool)

(assert (=> b!456298 (= res!272374 (arrayNoDuplicates!0 lt!206531 #b00000000000000000000000000000000 Nil!8198))))

(declare-fun b!456299 () Bool)

(declare-fun res!272367 () Bool)

(declare-fun e!266605 () Bool)

(assert (=> b!456299 (=> (not res!272367) (not e!266605))))

(declare-fun _keys!709 () array!28297)

(assert (=> b!456299 (= res!272367 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8198))))

(declare-fun b!456300 () Bool)

(declare-fun res!272366 () Bool)

(assert (=> b!456300 (=> (not res!272366) (not e!266605))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456300 (= res!272366 (validKeyInArray!0 k!794))))

(declare-fun b!456301 () Bool)

(declare-fun e!266603 () Bool)

(declare-fun tp_is_empty!12265 () Bool)

(assert (=> b!456301 (= e!266603 tp_is_empty!12265)))

(declare-fun b!456303 () Bool)

(declare-fun res!272377 () Bool)

(assert (=> b!456303 (=> (not res!272377) (not e!266605))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456303 (= res!272377 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13941 _keys!709))))))

(declare-fun b!456304 () Bool)

(declare-fun res!272368 () Bool)

(assert (=> b!456304 (=> (not res!272368) (not e!266605))))

(declare-fun arrayContainsKey!0 (array!28297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456304 (= res!272368 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456305 () Bool)

(declare-fun e!266604 () Bool)

(assert (=> b!456305 (= e!266604 (not true))))

(declare-datatypes ((V!17459 0))(
  ( (V!17460 (val!6177 Int)) )
))
(declare-fun minValue!515 () V!17459)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5789 0))(
  ( (ValueCellFull!5789 (v!8439 V!17459)) (EmptyCell!5789) )
))
(declare-datatypes ((array!28299 0))(
  ( (array!28300 (arr!13590 (Array (_ BitVec 32) ValueCell!5789)) (size!13942 (_ BitVec 32))) )
))
(declare-fun lt!206530 () array!28299)

(declare-fun _values!549 () array!28299)

(declare-fun zeroValue!515 () V!17459)

(declare-fun v!412 () V!17459)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8094 0))(
  ( (tuple2!8095 (_1!4057 (_ BitVec 64)) (_2!4057 V!17459)) )
))
(declare-datatypes ((List!8202 0))(
  ( (Nil!8199) (Cons!8198 (h!9054 tuple2!8094) (t!14038 List!8202)) )
))
(declare-datatypes ((ListLongMap!7021 0))(
  ( (ListLongMap!7022 (toList!3526 List!8202)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1702 (array!28297 array!28299 (_ BitVec 32) (_ BitVec 32) V!17459 V!17459 (_ BitVec 32) Int) ListLongMap!7021)

(declare-fun +!1549 (ListLongMap!7021 tuple2!8094) ListLongMap!7021)

(assert (=> b!456305 (= (getCurrentListMapNoExtraKeys!1702 lt!206531 lt!206530 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1549 (getCurrentListMapNoExtraKeys!1702 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8095 k!794 v!412)))))

(declare-datatypes ((Unit!13223 0))(
  ( (Unit!13224) )
))
(declare-fun lt!206528 () Unit!13223)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!714 (array!28297 array!28299 (_ BitVec 32) (_ BitVec 32) V!17459 V!17459 (_ BitVec 32) (_ BitVec 64) V!17459 (_ BitVec 32) Int) Unit!13223)

(assert (=> b!456305 (= lt!206528 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!714 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456306 () Bool)

(declare-fun res!272375 () Bool)

(assert (=> b!456306 (=> (not res!272375) (not e!266605))))

(assert (=> b!456306 (= res!272375 (and (= (size!13942 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13941 _keys!709) (size!13942 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456307 () Bool)

(declare-fun e!266601 () Bool)

(declare-fun e!266602 () Bool)

(assert (=> b!456307 (= e!266601 (and e!266602 mapRes!20038))))

(declare-fun condMapEmpty!20038 () Bool)

(declare-fun mapDefault!20038 () ValueCell!5789)

