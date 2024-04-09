; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132190 () Bool)

(assert start!132190)

(declare-fun b_free!31871 () Bool)

(declare-fun b_next!31871 () Bool)

(assert (=> start!132190 (= b_free!31871 (not b_next!31871))))

(declare-fun tp!111865 () Bool)

(declare-fun b_and!51303 () Bool)

(assert (=> start!132190 (= tp!111865 b_and!51303)))

(declare-fun bm!70763 () Bool)

(declare-datatypes ((V!59305 0))(
  ( (V!59306 (val!19151 Int)) )
))
(declare-datatypes ((tuple2!24822 0))(
  ( (tuple2!24823 (_1!12421 (_ BitVec 64)) (_2!12421 V!59305)) )
))
(declare-datatypes ((List!36312 0))(
  ( (Nil!36309) (Cons!36308 (h!37754 tuple2!24822) (t!51025 List!36312)) )
))
(declare-datatypes ((ListLongMap!22443 0))(
  ( (ListLongMap!22444 (toList!11237 List!36312)) )
))
(declare-fun call!70767 () ListLongMap!22443)

(declare-fun call!70766 () ListLongMap!22443)

(assert (=> bm!70763 (= call!70767 call!70766)))

(declare-fun b!1550356 () Bool)

(declare-fun res!1062023 () Bool)

(declare-fun e!863034 () Bool)

(assert (=> b!1550356 (=> (not res!1062023) (not e!863034))))

(declare-datatypes ((array!103451 0))(
  ( (array!103452 (arr!49923 (Array (_ BitVec 32) (_ BitVec 64))) (size!50474 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103451)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18163 0))(
  ( (ValueCellFull!18163 (v!21949 V!59305)) (EmptyCell!18163) )
))
(declare-datatypes ((array!103453 0))(
  ( (array!103454 (arr!49924 (Array (_ BitVec 32) ValueCell!18163)) (size!50475 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103453)

(assert (=> b!1550356 (= res!1062023 (and (= (size!50475 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50474 _keys!618) (size!50475 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1550357 () Bool)

(declare-fun c!142518 () Bool)

(declare-fun lt!668203 () Bool)

(assert (=> b!1550357 (= c!142518 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668203))))

(declare-fun e!863035 () ListLongMap!22443)

(declare-fun e!863039 () ListLongMap!22443)

(assert (=> b!1550357 (= e!863035 e!863039)))

(declare-fun b!1550358 () Bool)

(declare-fun e!863033 () Bool)

(declare-fun e!863041 () Bool)

(declare-fun mapRes!58924 () Bool)

(assert (=> b!1550358 (= e!863033 (and e!863041 mapRes!58924))))

(declare-fun condMapEmpty!58924 () Bool)

(declare-fun mapDefault!58924 () ValueCell!18163)

