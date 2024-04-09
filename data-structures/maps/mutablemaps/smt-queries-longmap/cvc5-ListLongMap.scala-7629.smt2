; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96130 () Bool)

(assert start!96130)

(declare-fun b_free!22747 () Bool)

(declare-fun b_next!22747 () Bool)

(assert (=> start!96130 (= b_free!22747 (not b_next!22747))))

(declare-fun tp!80091 () Bool)

(declare-fun b_and!36187 () Bool)

(assert (=> start!96130 (= tp!80091 b_and!36187)))

(declare-fun b!1090133 () Bool)

(declare-fun res!727321 () Bool)

(declare-fun e!622671 () Bool)

(assert (=> b!1090133 (=> (not res!727321) (not e!622671))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70386 0))(
  ( (array!70387 (arr!33863 (Array (_ BitVec 32) (_ BitVec 64))) (size!34400 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70386)

(assert (=> b!1090133 (= res!727321 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34400 _keys!1070))))))

(declare-fun b!1090134 () Bool)

(declare-fun e!622665 () Bool)

(declare-fun e!622668 () Bool)

(declare-fun mapRes!41878 () Bool)

(assert (=> b!1090134 (= e!622665 (and e!622668 mapRes!41878))))

(declare-fun condMapEmpty!41878 () Bool)

(declare-datatypes ((V!40793 0))(
  ( (V!40794 (val!13431 Int)) )
))
(declare-datatypes ((ValueCell!12665 0))(
  ( (ValueCellFull!12665 (v!16053 V!40793)) (EmptyCell!12665) )
))
(declare-datatypes ((array!70388 0))(
  ( (array!70389 (arr!33864 (Array (_ BitVec 32) ValueCell!12665)) (size!34401 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70388)

(declare-fun mapDefault!41878 () ValueCell!12665)

