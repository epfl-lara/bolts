; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74886 () Bool)

(assert start!74886)

(declare-fun b_free!15407 () Bool)

(declare-fun b_next!15407 () Bool)

(assert (=> start!74886 (= b_free!15407 (not b_next!15407))))

(declare-fun tp!53921 () Bool)

(declare-fun b_and!25515 () Bool)

(assert (=> start!74886 (= tp!53921 b_and!25515)))

(declare-fun b!882422 () Bool)

(declare-fun res!599619 () Bool)

(declare-fun e!491142 () Bool)

(assert (=> b!882422 (=> (not res!599619) (not e!491142))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51412 0))(
  ( (array!51413 (arr!24722 (Array (_ BitVec 32) (_ BitVec 64))) (size!25163 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51412)

(assert (=> b!882422 (= res!599619 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25163 _keys!868))))))

(declare-fun b!882423 () Bool)

(declare-fun e!491140 () Bool)

(declare-fun e!491143 () Bool)

(assert (=> b!882423 (= e!491140 e!491143)))

(declare-fun res!599613 () Bool)

(assert (=> b!882423 (=> (not res!599613) (not e!491143))))

(declare-datatypes ((List!17649 0))(
  ( (Nil!17646) (Cons!17645 (h!18776 (_ BitVec 64)) (t!24866 List!17649)) )
))
(declare-fun contains!4267 (List!17649 (_ BitVec 64)) Bool)

(assert (=> b!882423 (= res!599613 (not (contains!4267 Nil!17646 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882424 () Bool)

(declare-fun e!491144 () Bool)

(declare-fun e!491145 () Bool)

(declare-fun mapRes!28110 () Bool)

(assert (=> b!882424 (= e!491144 (and e!491145 mapRes!28110))))

(declare-fun condMapEmpty!28110 () Bool)

(declare-datatypes ((V!28581 0))(
  ( (V!28582 (val!8873 Int)) )
))
(declare-datatypes ((ValueCell!8386 0))(
  ( (ValueCellFull!8386 (v!11333 V!28581)) (EmptyCell!8386) )
))
(declare-datatypes ((array!51414 0))(
  ( (array!51415 (arr!24723 (Array (_ BitVec 32) ValueCell!8386)) (size!25164 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51414)

(declare-fun mapDefault!28110 () ValueCell!8386)

