; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74214 () Bool)

(assert start!74214)

(declare-fun res!593093 () Bool)

(declare-fun e!485941 () Bool)

(assert (=> start!74214 (=> (not res!593093) (not e!485941))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50570 0))(
  ( (array!50571 (arr!24311 (Array (_ BitVec 32) (_ BitVec 64))) (size!24752 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50570)

(assert (=> start!74214 (= res!593093 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24752 _keys!868))))))

(assert (=> start!74214 e!485941))

(assert (=> start!74214 true))

(declare-fun array_inv!19164 (array!50570) Bool)

(assert (=> start!74214 (array_inv!19164 _keys!868)))

(declare-datatypes ((V!28013 0))(
  ( (V!28014 (val!8660 Int)) )
))
(declare-datatypes ((ValueCell!8173 0))(
  ( (ValueCellFull!8173 (v!11081 V!28013)) (EmptyCell!8173) )
))
(declare-datatypes ((array!50572 0))(
  ( (array!50573 (arr!24312 (Array (_ BitVec 32) ValueCell!8173)) (size!24753 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50572)

(declare-fun e!485939 () Bool)

(declare-fun array_inv!19165 (array!50572) Bool)

(assert (=> start!74214 (and (array_inv!19165 _values!688) e!485939)))

(declare-fun b!872506 () Bool)

(declare-fun e!485942 () Bool)

(declare-fun mapRes!27440 () Bool)

(assert (=> b!872506 (= e!485939 (and e!485942 mapRes!27440))))

(declare-fun condMapEmpty!27440 () Bool)

(declare-fun mapDefault!27440 () ValueCell!8173)

