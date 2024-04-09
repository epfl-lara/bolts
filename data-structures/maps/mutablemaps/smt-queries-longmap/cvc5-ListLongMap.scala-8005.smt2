; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98906 () Bool)

(assert start!98906)

(declare-fun b_free!24475 () Bool)

(declare-fun b_next!24475 () Bool)

(assert (=> start!98906 (= b_free!24475 (not b_next!24475))))

(declare-fun tp!86136 () Bool)

(declare-fun b_and!39813 () Bool)

(assert (=> start!98906 (= tp!86136 b_and!39813)))

(declare-fun b!1156798 () Bool)

(declare-datatypes ((Unit!37992 0))(
  ( (Unit!37993) )
))
(declare-fun e!657911 () Unit!37992)

(declare-fun lt!519367 () Unit!37992)

(assert (=> b!1156798 (= e!657911 lt!519367)))

(declare-fun call!55244 () Unit!37992)

(assert (=> b!1156798 (= lt!519367 call!55244)))

(declare-fun call!55248 () Bool)

(assert (=> b!1156798 call!55248))

(declare-fun b!1156799 () Bool)

(declare-fun res!768412 () Bool)

(declare-fun e!657915 () Bool)

(assert (=> b!1156799 (=> (not res!768412) (not e!657915))))

(declare-datatypes ((array!74800 0))(
  ( (array!74801 (arr!36047 (Array (_ BitVec 32) (_ BitVec 64))) (size!36584 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74800)

(declare-datatypes ((List!25370 0))(
  ( (Nil!25367) (Cons!25366 (h!26575 (_ BitVec 64)) (t!36844 List!25370)) )
))
(declare-fun arrayNoDuplicates!0 (array!74800 (_ BitVec 32) List!25370) Bool)

(assert (=> b!1156799 (= res!768412 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25367))))

(declare-fun bm!55238 () Bool)

(declare-fun call!55247 () Unit!37992)

(assert (=> bm!55238 (= call!55244 call!55247)))

(declare-fun b!1156800 () Bool)

(declare-fun e!657913 () Bool)

(declare-fun e!657902 () Bool)

(assert (=> b!1156800 (= e!657913 (not e!657902))))

(declare-fun res!768400 () Bool)

(assert (=> b!1156800 (=> res!768400 e!657902)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156800 (= res!768400 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156800 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519365 () Unit!37992)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74800 (_ BitVec 64) (_ BitVec 32)) Unit!37992)

(assert (=> b!1156800 (= lt!519365 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1156801 () Bool)

(declare-fun e!657900 () Unit!37992)

(assert (=> b!1156801 (= e!657911 e!657900)))

(declare-fun c!115084 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!519356 () Bool)

(assert (=> b!1156801 (= c!115084 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519356))))

(declare-fun b!1156802 () Bool)

(declare-fun e!657909 () Bool)

(declare-fun e!657904 () Bool)

(declare-fun mapRes!45332 () Bool)

(assert (=> b!1156802 (= e!657909 (and e!657904 mapRes!45332))))

(declare-fun condMapEmpty!45332 () Bool)

(declare-datatypes ((V!43801 0))(
  ( (V!43802 (val!14559 Int)) )
))
(declare-datatypes ((ValueCell!13793 0))(
  ( (ValueCellFull!13793 (v!17197 V!43801)) (EmptyCell!13793) )
))
(declare-datatypes ((array!74802 0))(
  ( (array!74803 (arr!36048 (Array (_ BitVec 32) ValueCell!13793)) (size!36585 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74802)

(declare-fun mapDefault!45332 () ValueCell!13793)

