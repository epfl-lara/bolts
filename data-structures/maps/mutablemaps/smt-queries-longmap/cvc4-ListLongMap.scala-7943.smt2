; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98538 () Bool)

(assert start!98538)

(declare-fun b_free!24107 () Bool)

(declare-fun b_next!24107 () Bool)

(assert (=> start!98538 (= b_free!24107 (not b_next!24107))))

(declare-fun tp!85032 () Bool)

(declare-fun b_and!39077 () Bool)

(assert (=> start!98538 (= tp!85032 b_and!39077)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!648658 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!507512 () Bool)

(declare-fun b!1140006 () Bool)

(assert (=> b!1140006 (= e!648658 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507512) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!50822 () Bool)

(declare-datatypes ((V!43309 0))(
  ( (V!43310 (val!14375 Int)) )
))
(declare-datatypes ((tuple2!18264 0))(
  ( (tuple2!18265 (_1!9142 (_ BitVec 64)) (_2!9142 V!43309)) )
))
(declare-datatypes ((List!25067 0))(
  ( (Nil!25064) (Cons!25063 (h!26272 tuple2!18264) (t!36173 List!25067)) )
))
(declare-datatypes ((ListLongMap!16245 0))(
  ( (ListLongMap!16246 (toList!8138 List!25067)) )
))
(declare-fun call!50832 () ListLongMap!16245)

(declare-fun call!50831 () ListLongMap!16245)

(assert (=> bm!50822 (= call!50832 call!50831)))

(declare-fun b!1140008 () Bool)

(declare-fun e!648662 () Bool)

(declare-fun tp_is_empty!28637 () Bool)

(assert (=> b!1140008 (= e!648662 tp_is_empty!28637)))

(declare-fun b!1140009 () Bool)

(declare-fun e!648656 () Bool)

(declare-fun mapRes!44780 () Bool)

(assert (=> b!1140009 (= e!648656 (and e!648662 mapRes!44780))))

(declare-fun condMapEmpty!44780 () Bool)

(declare-datatypes ((ValueCell!13609 0))(
  ( (ValueCellFull!13609 (v!17013 V!43309)) (EmptyCell!13609) )
))
(declare-datatypes ((array!74092 0))(
  ( (array!74093 (arr!35693 (Array (_ BitVec 32) ValueCell!13609)) (size!36230 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74092)

(declare-fun mapDefault!44780 () ValueCell!13609)

