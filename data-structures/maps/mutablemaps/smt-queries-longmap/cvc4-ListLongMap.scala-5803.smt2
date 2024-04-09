; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74922 () Bool)

(assert start!74922)

(declare-fun b_free!15413 () Bool)

(declare-fun b_next!15413 () Bool)

(assert (=> start!74922 (= b_free!15413 (not b_next!15413))))

(declare-fun tp!53943 () Bool)

(declare-fun b_and!25543 () Bool)

(assert (=> start!74922 (= tp!53943 b_and!25543)))

(declare-fun b!882736 () Bool)

(declare-fun e!491325 () Bool)

(declare-fun e!491326 () Bool)

(assert (=> b!882736 (= e!491325 e!491326)))

(declare-fun res!599818 () Bool)

(assert (=> b!882736 (=> res!599818 e!491326)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51426 0))(
  ( (array!51427 (arr!24728 (Array (_ BitVec 32) (_ BitVec 64))) (size!25169 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51426)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882736 (= res!599818 (not (= (select (arr!24728 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28589 0))(
  ( (V!28590 (val!8876 Int)) )
))
(declare-datatypes ((tuple2!11786 0))(
  ( (tuple2!11787 (_1!5903 (_ BitVec 64)) (_2!5903 V!28589)) )
))
(declare-datatypes ((List!17654 0))(
  ( (Nil!17651) (Cons!17650 (h!18781 tuple2!11786) (t!24877 List!17654)) )
))
(declare-datatypes ((ListLongMap!10569 0))(
  ( (ListLongMap!10570 (toList!5300 List!17654)) )
))
(declare-fun lt!399431 () ListLongMap!10569)

(declare-fun lt!399427 () ListLongMap!10569)

(declare-datatypes ((ValueCell!8389 0))(
  ( (ValueCellFull!8389 (v!11341 V!28589)) (EmptyCell!8389) )
))
(declare-datatypes ((array!51428 0))(
  ( (array!51429 (arr!24729 (Array (_ BitVec 32) ValueCell!8389)) (size!25170 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51428)

(declare-fun +!2505 (ListLongMap!10569 tuple2!11786) ListLongMap!10569)

(declare-fun get!13039 (ValueCell!8389 V!28589) V!28589)

(declare-fun dynLambda!1264 (Int (_ BitVec 64)) V!28589)

(assert (=> b!882736 (= lt!399431 (+!2505 lt!399427 (tuple2!11787 (select (arr!24728 _keys!868) from!1053) (get!13039 (select (arr!24729 _values!688) from!1053) (dynLambda!1264 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882737 () Bool)

(declare-fun e!491328 () Bool)

(declare-fun tp_is_empty!17657 () Bool)

(assert (=> b!882737 (= e!491328 tp_is_empty!17657)))

(declare-fun b!882738 () Bool)

(declare-fun e!491333 () Bool)

(declare-fun mapRes!28122 () Bool)

(assert (=> b!882738 (= e!491333 (and e!491328 mapRes!28122))))

(declare-fun condMapEmpty!28122 () Bool)

(declare-fun mapDefault!28122 () ValueCell!8389)

