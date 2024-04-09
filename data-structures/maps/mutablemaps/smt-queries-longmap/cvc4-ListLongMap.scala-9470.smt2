; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112468 () Bool)

(assert start!112468)

(declare-fun b_free!30827 () Bool)

(declare-fun b_next!30827 () Bool)

(assert (=> start!112468 (= b_free!30827 (not b_next!30827))))

(declare-fun tp!108118 () Bool)

(declare-fun b_and!49679 () Bool)

(assert (=> start!112468 (= tp!108118 b_and!49679)))

(declare-fun b!1332886 () Bool)

(declare-fun e!759377 () Bool)

(declare-fun tp_is_empty!36737 () Bool)

(assert (=> b!1332886 (= e!759377 tp_is_empty!36737)))

(declare-fun b!1332887 () Bool)

(declare-fun res!884594 () Bool)

(declare-fun e!759379 () Bool)

(assert (=> b!1332887 (=> (not res!884594) (not e!759379))))

(declare-datatypes ((array!90321 0))(
  ( (array!90322 (arr!43622 (Array (_ BitVec 32) (_ BitVec 64))) (size!44173 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90321)

(declare-datatypes ((List!31101 0))(
  ( (Nil!31098) (Cons!31097 (h!32306 (_ BitVec 64)) (t!45306 List!31101)) )
))
(declare-fun arrayNoDuplicates!0 (array!90321 (_ BitVec 32) List!31101) Bool)

(assert (=> b!1332887 (= res!884594 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31098))))

(declare-fun mapIsEmpty!56779 () Bool)

(declare-fun mapRes!56779 () Bool)

(assert (=> mapIsEmpty!56779 mapRes!56779))

(declare-fun b!1332889 () Bool)

(declare-fun res!884597 () Bool)

(assert (=> b!1332889 (=> (not res!884597) (not e!759379))))

(declare-datatypes ((V!54085 0))(
  ( (V!54086 (val!18443 Int)) )
))
(declare-datatypes ((ValueCell!17470 0))(
  ( (ValueCellFull!17470 (v!21078 V!54085)) (EmptyCell!17470) )
))
(declare-datatypes ((array!90323 0))(
  ( (array!90324 (arr!43623 (Array (_ BitVec 32) ValueCell!17470)) (size!44174 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90323)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332889 (= res!884597 (and (= (size!44174 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44173 _keys!1590) (size!44174 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332890 () Bool)

(declare-fun res!884595 () Bool)

(assert (=> b!1332890 (=> (not res!884595) (not e!759379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90321 (_ BitVec 32)) Bool)

(assert (=> b!1332890 (= res!884595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332891 () Bool)

(declare-fun res!884593 () Bool)

(assert (=> b!1332891 (=> (not res!884593) (not e!759379))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1332891 (= res!884593 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44173 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332892 () Bool)

(declare-fun e!759378 () Bool)

(assert (=> b!1332892 (= e!759378 (and e!759377 mapRes!56779))))

(declare-fun condMapEmpty!56779 () Bool)

(declare-fun mapDefault!56779 () ValueCell!17470)

