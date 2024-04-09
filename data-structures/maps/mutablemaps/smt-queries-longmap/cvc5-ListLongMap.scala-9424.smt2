; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112188 () Bool)

(assert start!112188)

(declare-fun b_free!30547 () Bool)

(declare-fun b_next!30547 () Bool)

(assert (=> start!112188 (= b_free!30547 (not b_next!30547))))

(declare-fun tp!107279 () Bool)

(declare-fun b_and!49207 () Bool)

(assert (=> start!112188 (= tp!107279 b_and!49207)))

(declare-fun mapIsEmpty!56359 () Bool)

(declare-fun mapRes!56359 () Bool)

(assert (=> mapIsEmpty!56359 mapRes!56359))

(declare-fun b!1328155 () Bool)

(declare-fun res!881317 () Bool)

(declare-fun e!757276 () Bool)

(assert (=> b!1328155 (=> (not res!881317) (not e!757276))))

(declare-datatypes ((V!53713 0))(
  ( (V!53714 (val!18303 Int)) )
))
(declare-datatypes ((ValueCell!17330 0))(
  ( (ValueCellFull!17330 (v!20938 V!53713)) (EmptyCell!17330) )
))
(declare-datatypes ((array!89777 0))(
  ( (array!89778 (arr!43350 (Array (_ BitVec 32) ValueCell!17330)) (size!43901 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89777)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89779 0))(
  ( (array!89780 (arr!43351 (Array (_ BitVec 32) (_ BitVec 64))) (size!43902 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89779)

(assert (=> b!1328155 (= res!881317 (and (= (size!43901 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43902 _keys!1590) (size!43901 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!56359 () Bool)

(declare-fun tp!107278 () Bool)

(declare-fun e!757279 () Bool)

(assert (=> mapNonEmpty!56359 (= mapRes!56359 (and tp!107278 e!757279))))

(declare-fun mapKey!56359 () (_ BitVec 32))

(declare-fun mapRest!56359 () (Array (_ BitVec 32) ValueCell!17330))

(declare-fun mapValue!56359 () ValueCell!17330)

(assert (=> mapNonEmpty!56359 (= (arr!43350 _values!1320) (store mapRest!56359 mapKey!56359 mapValue!56359))))

(declare-fun b!1328156 () Bool)

(declare-fun e!757278 () Bool)

(declare-fun tp_is_empty!36457 () Bool)

(assert (=> b!1328156 (= e!757278 tp_is_empty!36457)))

(declare-fun b!1328157 () Bool)

(assert (=> b!1328157 (= e!757279 tp_is_empty!36457)))

(declare-fun res!881315 () Bool)

(assert (=> start!112188 (=> (not res!881315) (not e!757276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112188 (= res!881315 (validMask!0 mask!1998))))

(assert (=> start!112188 e!757276))

(declare-fun e!757275 () Bool)

(declare-fun array_inv!32659 (array!89777) Bool)

(assert (=> start!112188 (and (array_inv!32659 _values!1320) e!757275)))

(assert (=> start!112188 true))

(declare-fun array_inv!32660 (array!89779) Bool)

(assert (=> start!112188 (array_inv!32660 _keys!1590)))

(assert (=> start!112188 tp!107279))

(assert (=> start!112188 tp_is_empty!36457))

(declare-fun b!1328158 () Bool)

(assert (=> b!1328158 (= e!757275 (and e!757278 mapRes!56359))))

(declare-fun condMapEmpty!56359 () Bool)

(declare-fun mapDefault!56359 () ValueCell!17330)

