; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132162 () Bool)

(assert start!132162)

(declare-fun b_free!31843 () Bool)

(declare-fun b_next!31843 () Bool)

(assert (=> start!132162 (= b_free!31843 (not b_next!31843))))

(declare-fun tp!111782 () Bool)

(declare-fun b_and!51263 () Bool)

(assert (=> start!132162 (= tp!111782 b_and!51263)))

(declare-fun bm!70544 () Bool)

(declare-datatypes ((V!59269 0))(
  ( (V!59270 (val!19137 Int)) )
))
(declare-datatypes ((tuple2!24796 0))(
  ( (tuple2!24797 (_1!12408 (_ BitVec 64)) (_2!12408 V!59269)) )
))
(declare-datatypes ((List!36293 0))(
  ( (Nil!36290) (Cons!36289 (h!37735 tuple2!24796) (t!50996 List!36293)) )
))
(declare-datatypes ((ListLongMap!22417 0))(
  ( (ListLongMap!22418 (toList!11224 List!36293)) )
))
(declare-fun call!70551 () ListLongMap!22417)

(declare-fun call!70548 () ListLongMap!22417)

(assert (=> bm!70544 (= call!70551 call!70548)))

(declare-fun b!1549574 () Bool)

(declare-fun res!1061678 () Bool)

(declare-fun e!862582 () Bool)

(assert (=> b!1549574 (=> (not res!1061678) (not e!862582))))

(declare-datatypes ((array!103399 0))(
  ( (array!103400 (arr!49897 (Array (_ BitVec 32) (_ BitVec 64))) (size!50448 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103399)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103399 (_ BitVec 32)) Bool)

(assert (=> b!1549574 (= res!1061678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun bm!70545 () Bool)

(declare-fun zeroValue!436 () V!59269)

(declare-fun c!142368 () Bool)

(declare-fun call!70547 () ListLongMap!22417)

(declare-fun c!142370 () Bool)

(declare-fun minValue!436 () V!59269)

(declare-fun call!70549 () ListLongMap!22417)

(declare-fun +!4937 (ListLongMap!22417 tuple2!24796) ListLongMap!22417)

(assert (=> bm!70545 (= call!70549 (+!4937 (ite c!142370 call!70547 (ite c!142368 call!70548 call!70551)) (ite (or c!142370 c!142368) (tuple2!24797 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24797 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1549575 () Bool)

(declare-fun e!862587 () Bool)

(declare-fun tp_is_empty!38119 () Bool)

(assert (=> b!1549575 (= e!862587 tp_is_empty!38119)))

(declare-fun b!1549576 () Bool)

(declare-fun res!1061676 () Bool)

(assert (=> b!1549576 (=> (not res!1061676) (not e!862582))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18149 0))(
  ( (ValueCellFull!18149 (v!21935 V!59269)) (EmptyCell!18149) )
))
(declare-datatypes ((array!103401 0))(
  ( (array!103402 (arr!49898 (Array (_ BitVec 32) ValueCell!18149)) (size!50449 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103401)

(assert (=> b!1549576 (= res!1061676 (and (= (size!50449 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50448 _keys!618) (size!50449 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1549577 () Bool)

(declare-fun res!1061679 () Bool)

(assert (=> b!1549577 (=> (not res!1061679) (not e!862582))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1549577 (= res!1061679 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50448 _keys!618))))))

(declare-fun b!1549578 () Bool)

(declare-fun e!862591 () Bool)

(declare-fun mapRes!58882 () Bool)

(assert (=> b!1549578 (= e!862591 (and e!862587 mapRes!58882))))

(declare-fun condMapEmpty!58882 () Bool)

(declare-fun mapDefault!58882 () ValueCell!18149)

