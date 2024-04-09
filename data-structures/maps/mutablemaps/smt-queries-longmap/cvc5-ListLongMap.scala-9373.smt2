; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111710 () Bool)

(assert start!111710)

(declare-fun b_free!30331 () Bool)

(declare-fun b_next!30331 () Bool)

(assert (=> start!111710 (= b_free!30331 (not b_next!30331))))

(declare-fun tp!106470 () Bool)

(declare-fun b_and!48831 () Bool)

(assert (=> start!111710 (= tp!106470 b_and!48831)))

(declare-fun mapIsEmpty!55874 () Bool)

(declare-fun mapRes!55874 () Bool)

(assert (=> mapIsEmpty!55874 mapRes!55874))

(declare-fun b!1322909 () Bool)

(declare-fun res!878169 () Bool)

(declare-fun e!754297 () Bool)

(assert (=> b!1322909 (=> (not res!878169) (not e!754297))))

(declare-datatypes ((array!89177 0))(
  ( (array!89178 (arr!43058 (Array (_ BitVec 32) (_ BitVec 64))) (size!43609 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89177)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1322909 (= res!878169 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43609 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!878171 () Bool)

(assert (=> start!111710 (=> (not res!878171) (not e!754297))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111710 (= res!878171 (validMask!0 mask!2019))))

(assert (=> start!111710 e!754297))

(declare-fun array_inv!32461 (array!89177) Bool)

(assert (=> start!111710 (array_inv!32461 _keys!1609)))

(assert (=> start!111710 true))

(declare-fun tp_is_empty!36151 () Bool)

(assert (=> start!111710 tp_is_empty!36151))

(declare-datatypes ((V!53305 0))(
  ( (V!53306 (val!18150 Int)) )
))
(declare-datatypes ((ValueCell!17177 0))(
  ( (ValueCellFull!17177 (v!20778 V!53305)) (EmptyCell!17177) )
))
(declare-datatypes ((array!89179 0))(
  ( (array!89180 (arr!43059 (Array (_ BitVec 32) ValueCell!17177)) (size!43610 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89179)

(declare-fun e!754293 () Bool)

(declare-fun array_inv!32462 (array!89179) Bool)

(assert (=> start!111710 (and (array_inv!32462 _values!1337) e!754293)))

(assert (=> start!111710 tp!106470))

(declare-fun b!1322910 () Bool)

(declare-fun e!754294 () Bool)

(assert (=> b!1322910 (= e!754294 tp_is_empty!36151)))

(declare-fun mapNonEmpty!55874 () Bool)

(declare-fun tp!106469 () Bool)

(declare-fun e!754295 () Bool)

(assert (=> mapNonEmpty!55874 (= mapRes!55874 (and tp!106469 e!754295))))

(declare-fun mapRest!55874 () (Array (_ BitVec 32) ValueCell!17177))

(declare-fun mapKey!55874 () (_ BitVec 32))

(declare-fun mapValue!55874 () ValueCell!17177)

(assert (=> mapNonEmpty!55874 (= (arr!43059 _values!1337) (store mapRest!55874 mapKey!55874 mapValue!55874))))

(declare-fun b!1322911 () Bool)

(assert (=> b!1322911 (= e!754293 (and e!754294 mapRes!55874))))

(declare-fun condMapEmpty!55874 () Bool)

(declare-fun mapDefault!55874 () ValueCell!17177)

