; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98508 () Bool)

(assert start!98508)

(declare-fun b_free!24077 () Bool)

(declare-fun b_next!24077 () Bool)

(assert (=> start!98508 (= b_free!24077 (not b_next!24077))))

(declare-fun tp!84943 () Bool)

(declare-fun b_and!39017 () Bool)

(assert (=> start!98508 (= tp!84943 b_and!39017)))

(declare-fun b!1138671 () Bool)

(declare-fun res!759631 () Bool)

(declare-fun e!647945 () Bool)

(assert (=> b!1138671 (=> (not res!759631) (not e!647945))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74032 0))(
  ( (array!74033 (arr!35663 (Array (_ BitVec 32) (_ BitVec 64))) (size!36200 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74032)

(assert (=> b!1138671 (= res!759631 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36200 _keys!1208))))))

(declare-fun b!1138672 () Bool)

(declare-datatypes ((Unit!37260 0))(
  ( (Unit!37261) )
))
(declare-fun e!647934 () Unit!37260)

(declare-fun e!647942 () Unit!37260)

(assert (=> b!1138672 (= e!647934 e!647942)))

(declare-fun c!111504 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506621 () Bool)

(assert (=> b!1138672 (= c!111504 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506621))))

(declare-fun b!1138673 () Bool)

(declare-fun e!647944 () Bool)

(declare-fun e!647932 () Bool)

(declare-fun mapRes!44735 () Bool)

(assert (=> b!1138673 (= e!647944 (and e!647932 mapRes!44735))))

(declare-fun condMapEmpty!44735 () Bool)

(declare-datatypes ((V!43269 0))(
  ( (V!43270 (val!14360 Int)) )
))
(declare-datatypes ((ValueCell!13594 0))(
  ( (ValueCellFull!13594 (v!16998 V!43269)) (EmptyCell!13594) )
))
(declare-datatypes ((array!74034 0))(
  ( (array!74035 (arr!35664 (Array (_ BitVec 32) ValueCell!13594)) (size!36201 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74034)

(declare-fun mapDefault!44735 () ValueCell!13594)

