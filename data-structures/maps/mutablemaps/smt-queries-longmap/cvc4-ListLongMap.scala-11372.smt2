; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132172 () Bool)

(assert start!132172)

(declare-fun b_free!31853 () Bool)

(declare-fun b_next!31853 () Bool)

(assert (=> start!132172 (= b_free!31853 (not b_next!31853))))

(declare-fun tp!111811 () Bool)

(declare-fun b_and!51283 () Bool)

(assert (=> start!132172 (= tp!111811 b_and!51283)))

(declare-fun b!1549931 () Bool)

(declare-fun res!1061851 () Bool)

(declare-fun e!862804 () Bool)

(assert (=> b!1549931 (=> (not res!1061851) (not e!862804))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549931 (= res!1061851 (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!70627 () Bool)

(declare-datatypes ((V!59281 0))(
  ( (V!59282 (val!19142 Int)) )
))
(declare-datatypes ((tuple2!24804 0))(
  ( (tuple2!24805 (_1!12412 (_ BitVec 64)) (_2!12412 V!59281)) )
))
(declare-datatypes ((List!36299 0))(
  ( (Nil!36296) (Cons!36295 (h!37741 tuple2!24804) (t!51012 List!36299)) )
))
(declare-datatypes ((ListLongMap!22425 0))(
  ( (ListLongMap!22426 (toList!11228 List!36299)) )
))
(declare-fun call!70634 () ListLongMap!22425)

(declare-fun call!70635 () ListLongMap!22425)

(assert (=> bm!70627 (= call!70634 call!70635)))

(declare-fun bm!70628 () Bool)

(declare-datatypes ((array!103417 0))(
  ( (array!103418 (arr!49906 (Array (_ BitVec 32) (_ BitVec 64))) (size!50457 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103417)

(declare-fun zeroValue!436 () V!59281)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18154 0))(
  ( (ValueCellFull!18154 (v!21940 V!59281)) (EmptyCell!18154) )
))
(declare-datatypes ((array!103419 0))(
  ( (array!103420 (arr!49907 (Array (_ BitVec 32) ValueCell!18154)) (size!50458 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103419)

(declare-fun minValue!436 () V!59281)

(declare-fun call!70633 () ListLongMap!22425)

(declare-fun getCurrentListMapNoExtraKeys!6660 (array!103417 array!103419 (_ BitVec 32) (_ BitVec 32) V!59281 V!59281 (_ BitVec 32) Int) ListLongMap!22425)

(assert (=> bm!70628 (= call!70633 (getCurrentListMapNoExtraKeys!6660 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1549932 () Bool)

(declare-datatypes ((Unit!51575 0))(
  ( (Unit!51576) )
))
(declare-fun e!862799 () Unit!51575)

(declare-fun Unit!51577 () Unit!51575)

(assert (=> b!1549932 (= e!862799 Unit!51577)))

(declare-fun b!1549933 () Bool)

(declare-fun e!862797 () Bool)

(declare-fun e!862803 () Bool)

(declare-fun mapRes!58897 () Bool)

(assert (=> b!1549933 (= e!862797 (and e!862803 mapRes!58897))))

(declare-fun condMapEmpty!58897 () Bool)

(declare-fun mapDefault!58897 () ValueCell!18154)

