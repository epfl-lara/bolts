; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4484 () Bool)

(assert start!4484)

(declare-fun b_free!1247 () Bool)

(declare-fun b_next!1247 () Bool)

(assert (=> start!4484 (= b_free!1247 (not b_next!1247))))

(declare-fun tp!5179 () Bool)

(declare-fun b_and!2071 () Bool)

(assert (=> start!4484 (= tp!5179 b_and!2071)))

(declare-fun b!34950 () Bool)

(declare-fun res!21226 () Bool)

(declare-fun e!22107 () Bool)

(assert (=> b!34950 (=> (not res!21226) (not e!22107))))

(declare-datatypes ((array!2407 0))(
  ( (array!2408 (arr!1151 (Array (_ BitVec 32) (_ BitVec 64))) (size!1252 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2407)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2407 (_ BitVec 32)) Bool)

(assert (=> b!34950 (= res!21226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!34951 () Bool)

(declare-fun e!22106 () Bool)

(declare-fun tp_is_empty!1601 () Bool)

(assert (=> b!34951 (= e!22106 tp_is_empty!1601)))

(declare-fun b!34952 () Bool)

(declare-fun res!21231 () Bool)

(assert (=> b!34952 (=> (not res!21231) (not e!22107))))

(declare-datatypes ((List!934 0))(
  ( (Nil!931) (Cons!930 (h!1497 (_ BitVec 64)) (t!3641 List!934)) )
))
(declare-fun arrayNoDuplicates!0 (array!2407 (_ BitVec 32) List!934) Bool)

(assert (=> b!34952 (= res!21231 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!931))))

(declare-fun b!34953 () Bool)

(declare-fun res!21228 () Bool)

(assert (=> b!34953 (=> (not res!21228) (not e!22107))))

(declare-datatypes ((V!1959 0))(
  ( (V!1960 (val!827 Int)) )
))
(declare-datatypes ((ValueCell!601 0))(
  ( (ValueCellFull!601 (v!1922 V!1959)) (EmptyCell!601) )
))
(declare-datatypes ((array!2409 0))(
  ( (array!2410 (arr!1152 (Array (_ BitVec 32) ValueCell!601)) (size!1253 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2409)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!34953 (= res!21228 (and (= (size!1253 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1252 _keys!1833) (size!1253 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!34954 () Bool)

(declare-fun e!22104 () Bool)

(declare-fun e!22103 () Bool)

(declare-fun mapRes!1948 () Bool)

(assert (=> b!34954 (= e!22104 (and e!22103 mapRes!1948))))

(declare-fun condMapEmpty!1948 () Bool)

(declare-fun mapDefault!1948 () ValueCell!601)

