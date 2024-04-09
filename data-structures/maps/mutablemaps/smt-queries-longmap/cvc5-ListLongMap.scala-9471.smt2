; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112470 () Bool)

(assert start!112470)

(declare-fun b_free!30829 () Bool)

(declare-fun b_next!30829 () Bool)

(assert (=> start!112470 (= b_free!30829 (not b_next!30829))))

(declare-fun tp!108124 () Bool)

(declare-fun b_and!49681 () Bool)

(assert (=> start!112470 (= tp!108124 b_and!49681)))

(declare-fun b!1332910 () Bool)

(declare-fun res!884610 () Bool)

(declare-fun e!759392 () Bool)

(assert (=> b!1332910 (=> (not res!884610) (not e!759392))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90325 0))(
  ( (array!90326 (arr!43624 (Array (_ BitVec 32) (_ BitVec 64))) (size!44175 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90325)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332910 (= res!884610 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44175 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56782 () Bool)

(declare-fun mapRes!56782 () Bool)

(assert (=> mapIsEmpty!56782 mapRes!56782))

(declare-fun b!1332911 () Bool)

(declare-fun res!884611 () Bool)

(assert (=> b!1332911 (=> (not res!884611) (not e!759392))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90325 (_ BitVec 32)) Bool)

(assert (=> b!1332911 (= res!884611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332912 () Bool)

(declare-fun res!884609 () Bool)

(assert (=> b!1332912 (=> (not res!884609) (not e!759392))))

(declare-datatypes ((V!54089 0))(
  ( (V!54090 (val!18444 Int)) )
))
(declare-datatypes ((ValueCell!17471 0))(
  ( (ValueCellFull!17471 (v!21079 V!54089)) (EmptyCell!17471) )
))
(declare-datatypes ((array!90327 0))(
  ( (array!90328 (arr!43625 (Array (_ BitVec 32) ValueCell!17471)) (size!44176 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90327)

(assert (=> b!1332912 (= res!884609 (and (= (size!44176 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44175 _keys!1590) (size!44176 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!884612 () Bool)

(assert (=> start!112470 (=> (not res!884612) (not e!759392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112470 (= res!884612 (validMask!0 mask!1998))))

(assert (=> start!112470 e!759392))

(declare-fun e!759390 () Bool)

(declare-fun array_inv!32847 (array!90327) Bool)

(assert (=> start!112470 (and (array_inv!32847 _values!1320) e!759390)))

(assert (=> start!112470 true))

(declare-fun array_inv!32848 (array!90325) Bool)

(assert (=> start!112470 (array_inv!32848 _keys!1590)))

(assert (=> start!112470 tp!108124))

(declare-fun tp_is_empty!36739 () Bool)

(assert (=> start!112470 tp_is_empty!36739))

(declare-fun b!1332913 () Bool)

(declare-fun e!759394 () Bool)

(assert (=> b!1332913 (= e!759394 tp_is_empty!36739)))

(declare-fun b!1332914 () Bool)

(assert (=> b!1332914 (= e!759390 (and e!759394 mapRes!56782))))

(declare-fun condMapEmpty!56782 () Bool)

(declare-fun mapDefault!56782 () ValueCell!17471)

