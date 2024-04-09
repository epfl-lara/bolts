; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74336 () Bool)

(assert start!74336)

(declare-fun b_free!15071 () Bool)

(declare-fun b_next!15071 () Bool)

(assert (=> start!74336 (= b_free!15071 (not b_next!15071))))

(declare-fun tp!52888 () Bool)

(declare-fun b_and!24865 () Bool)

(assert (=> start!74336 (= tp!52888 b_and!24865)))

(declare-fun b!874196 () Bool)

(declare-fun res!594198 () Bool)

(declare-fun e!486777 () Bool)

(assert (=> b!874196 (=> (not res!594198) (not e!486777))))

(declare-datatypes ((array!50742 0))(
  ( (array!50743 (arr!24395 (Array (_ BitVec 32) (_ BitVec 64))) (size!24836 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50742)

(declare-datatypes ((List!17387 0))(
  ( (Nil!17384) (Cons!17383 (h!18514 (_ BitVec 64)) (t!24436 List!17387)) )
))
(declare-fun arrayNoDuplicates!0 (array!50742 (_ BitVec 32) List!17387) Bool)

(assert (=> b!874196 (= res!594198 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17384))))

(declare-fun b!874197 () Bool)

(declare-fun e!486776 () Bool)

(declare-fun tp_is_empty!17315 () Bool)

(assert (=> b!874197 (= e!486776 tp_is_empty!17315)))

(declare-fun mapNonEmpty!27581 () Bool)

(declare-fun mapRes!27581 () Bool)

(declare-fun tp!52889 () Bool)

(declare-fun e!486775 () Bool)

(assert (=> mapNonEmpty!27581 (= mapRes!27581 (and tp!52889 e!486775))))

(declare-datatypes ((V!28133 0))(
  ( (V!28134 (val!8705 Int)) )
))
(declare-datatypes ((ValueCell!8218 0))(
  ( (ValueCellFull!8218 (v!11130 V!28133)) (EmptyCell!8218) )
))
(declare-fun mapValue!27581 () ValueCell!8218)

(declare-fun mapRest!27581 () (Array (_ BitVec 32) ValueCell!8218))

(declare-datatypes ((array!50744 0))(
  ( (array!50745 (arr!24396 (Array (_ BitVec 32) ValueCell!8218)) (size!24837 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50744)

(declare-fun mapKey!27581 () (_ BitVec 32))

(assert (=> mapNonEmpty!27581 (= (arr!24396 _values!688) (store mapRest!27581 mapKey!27581 mapValue!27581))))

(declare-fun b!874198 () Bool)

(declare-fun res!594197 () Bool)

(assert (=> b!874198 (=> (not res!594197) (not e!486777))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50742 (_ BitVec 32)) Bool)

(assert (=> b!874198 (= res!594197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874199 () Bool)

(declare-fun res!594193 () Bool)

(assert (=> b!874199 (=> (not res!594193) (not e!486777))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874199 (= res!594193 (and (= (select (arr!24395 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874200 () Bool)

(declare-fun e!486774 () Bool)

(assert (=> b!874200 (= e!486774 (and e!486776 mapRes!27581))))

(declare-fun condMapEmpty!27581 () Bool)

(declare-fun mapDefault!27581 () ValueCell!8218)

