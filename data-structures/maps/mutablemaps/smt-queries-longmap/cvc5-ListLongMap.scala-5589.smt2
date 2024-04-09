; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73346 () Bool)

(assert start!73346)

(declare-fun b_free!14233 () Bool)

(declare-fun b_next!14233 () Bool)

(assert (=> start!73346 (= b_free!14233 (not b_next!14233))))

(declare-fun tp!50203 () Bool)

(declare-fun b_and!23607 () Bool)

(assert (=> start!73346 (= tp!50203 b_and!23607)))

(declare-fun b!855220 () Bool)

(declare-fun res!580921 () Bool)

(declare-fun e!476839 () Bool)

(assert (=> b!855220 (=> (not res!580921) (not e!476839))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855220 (= res!580921 (validKeyInArray!0 k!854))))

(declare-fun res!580924 () Bool)

(assert (=> start!73346 (=> (not res!580924) (not e!476839))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48914 0))(
  ( (array!48915 (arr!23484 (Array (_ BitVec 32) (_ BitVec 64))) (size!23925 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48914)

(assert (=> start!73346 (= res!580924 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23925 _keys!868))))))

(assert (=> start!73346 e!476839))

(declare-fun tp_is_empty!16369 () Bool)

(assert (=> start!73346 tp_is_empty!16369))

(assert (=> start!73346 true))

(assert (=> start!73346 tp!50203))

(declare-fun array_inv!18594 (array!48914) Bool)

(assert (=> start!73346 (array_inv!18594 _keys!868)))

(declare-datatypes ((V!26873 0))(
  ( (V!26874 (val!8232 Int)) )
))
(declare-datatypes ((ValueCell!7745 0))(
  ( (ValueCellFull!7745 (v!10653 V!26873)) (EmptyCell!7745) )
))
(declare-datatypes ((array!48916 0))(
  ( (array!48917 (arr!23485 (Array (_ BitVec 32) ValueCell!7745)) (size!23926 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48916)

(declare-fun e!476837 () Bool)

(declare-fun array_inv!18595 (array!48916) Bool)

(assert (=> start!73346 (and (array_inv!18595 _values!688) e!476837)))

(declare-fun b!855221 () Bool)

(declare-fun e!476840 () Bool)

(declare-fun mapRes!26153 () Bool)

(assert (=> b!855221 (= e!476837 (and e!476840 mapRes!26153))))

(declare-fun condMapEmpty!26153 () Bool)

(declare-fun mapDefault!26153 () ValueCell!7745)

