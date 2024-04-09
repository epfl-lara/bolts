; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112410 () Bool)

(assert start!112410)

(declare-fun b_free!30769 () Bool)

(declare-fun b_next!30769 () Bool)

(assert (=> start!112410 (= b_free!30769 (not b_next!30769))))

(declare-fun tp!107945 () Bool)

(declare-fun b_and!49603 () Bool)

(assert (=> start!112410 (= tp!107945 b_and!49603)))

(declare-fun b!1332072 () Bool)

(declare-fun res!884061 () Bool)

(declare-fun e!758944 () Bool)

(assert (=> b!1332072 (=> (not res!884061) (not e!758944))))

(declare-datatypes ((V!54009 0))(
  ( (V!54010 (val!18414 Int)) )
))
(declare-datatypes ((ValueCell!17441 0))(
  ( (ValueCellFull!17441 (v!21049 V!54009)) (EmptyCell!17441) )
))
(declare-datatypes ((array!90207 0))(
  ( (array!90208 (arr!43565 (Array (_ BitVec 32) ValueCell!17441)) (size!44116 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90207)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90209 0))(
  ( (array!90210 (arr!43566 (Array (_ BitVec 32) (_ BitVec 64))) (size!44117 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90209)

(assert (=> b!1332072 (= res!884061 (and (= (size!44116 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44117 _keys!1590) (size!44116 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!884062 () Bool)

(assert (=> start!112410 (=> (not res!884062) (not e!758944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112410 (= res!884062 (validMask!0 mask!1998))))

(assert (=> start!112410 e!758944))

(declare-fun e!758941 () Bool)

(declare-fun array_inv!32811 (array!90207) Bool)

(assert (=> start!112410 (and (array_inv!32811 _values!1320) e!758941)))

(assert (=> start!112410 true))

(declare-fun array_inv!32812 (array!90209) Bool)

(assert (=> start!112410 (array_inv!32812 _keys!1590)))

(assert (=> start!112410 tp!107945))

(declare-fun tp_is_empty!36679 () Bool)

(assert (=> start!112410 tp_is_empty!36679))

(declare-fun b!1332073 () Bool)

(declare-fun e!758940 () Bool)

(declare-fun mapRes!56692 () Bool)

(assert (=> b!1332073 (= e!758941 (and e!758940 mapRes!56692))))

(declare-fun condMapEmpty!56692 () Bool)

(declare-fun mapDefault!56692 () ValueCell!17441)

