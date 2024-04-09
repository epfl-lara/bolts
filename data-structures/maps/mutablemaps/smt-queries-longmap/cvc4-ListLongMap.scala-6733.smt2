; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84402 () Bool)

(assert start!84402)

(declare-fun b_free!19961 () Bool)

(declare-fun b_next!19961 () Bool)

(assert (=> start!84402 (= b_free!19961 (not b_next!19961))))

(declare-fun tp!69658 () Bool)

(declare-fun b_and!32013 () Bool)

(assert (=> start!84402 (= tp!69658 b_and!32013)))

(declare-fun b!986775 () Bool)

(declare-fun res!660278 () Bool)

(declare-fun e!556488 () Bool)

(assert (=> b!986775 (=> (not res!660278) (not e!556488))))

(declare-datatypes ((array!62301 0))(
  ( (array!62302 (arr!30004 (Array (_ BitVec 32) (_ BitVec 64))) (size!30484 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62301)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62301 (_ BitVec 32)) Bool)

(assert (=> b!986775 (= res!660278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986776 () Bool)

(declare-fun res!660282 () Bool)

(assert (=> b!986776 (=> (not res!660282) (not e!556488))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!986776 (= res!660282 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30484 _keys!1544))))))

(declare-fun mapNonEmpty!36794 () Bool)

(declare-fun mapRes!36794 () Bool)

(declare-fun tp!69659 () Bool)

(declare-fun e!556489 () Bool)

(assert (=> mapNonEmpty!36794 (= mapRes!36794 (and tp!69659 e!556489))))

(declare-datatypes ((V!35885 0))(
  ( (V!35886 (val!11639 Int)) )
))
(declare-datatypes ((ValueCell!11107 0))(
  ( (ValueCellFull!11107 (v!14201 V!35885)) (EmptyCell!11107) )
))
(declare-fun mapRest!36794 () (Array (_ BitVec 32) ValueCell!11107))

(declare-datatypes ((array!62303 0))(
  ( (array!62304 (arr!30005 (Array (_ BitVec 32) ValueCell!11107)) (size!30485 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62303)

(declare-fun mapValue!36794 () ValueCell!11107)

(declare-fun mapKey!36794 () (_ BitVec 32))

(assert (=> mapNonEmpty!36794 (= (arr!30005 _values!1278) (store mapRest!36794 mapKey!36794 mapValue!36794))))

(declare-fun b!986777 () Bool)

(declare-fun e!556487 () Bool)

(declare-fun tp_is_empty!23177 () Bool)

(assert (=> b!986777 (= e!556487 tp_is_empty!23177)))

(declare-fun b!986778 () Bool)

(declare-fun res!660279 () Bool)

(assert (=> b!986778 (=> (not res!660279) (not e!556488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986778 (= res!660279 (validKeyInArray!0 (select (arr!30004 _keys!1544) from!1932)))))

(declare-fun b!986779 () Bool)

(declare-fun e!556490 () Bool)

(assert (=> b!986779 (= e!556490 (and e!556487 mapRes!36794))))

(declare-fun condMapEmpty!36794 () Bool)

(declare-fun mapDefault!36794 () ValueCell!11107)

