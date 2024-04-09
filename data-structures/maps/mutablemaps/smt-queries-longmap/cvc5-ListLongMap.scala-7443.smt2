; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94566 () Bool)

(assert start!94566)

(declare-fun b_free!21835 () Bool)

(declare-fun b_next!21835 () Bool)

(assert (=> start!94566 (= b_free!21835 (not b_next!21835))))

(declare-fun tp!76956 () Bool)

(declare-fun b_and!34655 () Bool)

(assert (=> start!94566 (= tp!76956 b_and!34655)))

(declare-fun b!1068880 () Bool)

(declare-fun res!713322 () Bool)

(declare-fun e!609970 () Bool)

(assert (=> b!1068880 (=> (not res!713322) (not e!609970))))

(declare-datatypes ((array!68240 0))(
  ( (array!68241 (arr!32815 (Array (_ BitVec 32) (_ BitVec 64))) (size!33352 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68240)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68240 (_ BitVec 32)) Bool)

(assert (=> b!1068880 (= res!713322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068881 () Bool)

(declare-fun e!609964 () Bool)

(assert (=> b!1068881 (= e!609964 true)))

(declare-datatypes ((V!39329 0))(
  ( (V!39330 (val!12873 Int)) )
))
(declare-datatypes ((tuple2!16428 0))(
  ( (tuple2!16429 (_1!8224 (_ BitVec 64)) (_2!8224 V!39329)) )
))
(declare-datatypes ((List!23017 0))(
  ( (Nil!23014) (Cons!23013 (h!24222 tuple2!16428) (t!32351 List!23017)) )
))
(declare-datatypes ((ListLongMap!14409 0))(
  ( (ListLongMap!14410 (toList!7220 List!23017)) )
))
(declare-fun lt!472274 () ListLongMap!14409)

(declare-fun -!655 (ListLongMap!14409 (_ BitVec 64)) ListLongMap!14409)

(assert (=> b!1068881 (= (-!655 lt!472274 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472274)))

(declare-datatypes ((Unit!35104 0))(
  ( (Unit!35105) )
))
(declare-fun lt!472278 () Unit!35104)

(declare-fun removeNotPresentStillSame!64 (ListLongMap!14409 (_ BitVec 64)) Unit!35104)

(assert (=> b!1068881 (= lt!472278 (removeNotPresentStillSame!64 lt!472274 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068882 () Bool)

(declare-fun e!609968 () Bool)

(declare-fun e!609969 () Bool)

(declare-fun mapRes!40165 () Bool)

(assert (=> b!1068882 (= e!609968 (and e!609969 mapRes!40165))))

(declare-fun condMapEmpty!40165 () Bool)

(declare-datatypes ((ValueCell!12119 0))(
  ( (ValueCellFull!12119 (v!15489 V!39329)) (EmptyCell!12119) )
))
(declare-datatypes ((array!68242 0))(
  ( (array!68243 (arr!32816 (Array (_ BitVec 32) ValueCell!12119)) (size!33353 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68242)

(declare-fun mapDefault!40165 () ValueCell!12119)

