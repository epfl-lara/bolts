; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84486 () Bool)

(assert start!84486)

(declare-fun b_free!20009 () Bool)

(declare-fun b_next!20009 () Bool)

(assert (=> start!84486 (= b_free!20009 (not b_next!20009))))

(declare-fun tp!69808 () Bool)

(declare-fun b_and!32103 () Bool)

(assert (=> start!84486 (= tp!69808 b_and!32103)))

(declare-fun mapNonEmpty!36872 () Bool)

(declare-fun mapRes!36872 () Bool)

(declare-fun tp!69809 () Bool)

(declare-fun e!556984 () Bool)

(assert (=> mapNonEmpty!36872 (= mapRes!36872 (and tp!69809 e!556984))))

(declare-datatypes ((V!35949 0))(
  ( (V!35950 (val!11663 Int)) )
))
(declare-datatypes ((ValueCell!11131 0))(
  ( (ValueCellFull!11131 (v!14227 V!35949)) (EmptyCell!11131) )
))
(declare-datatypes ((array!62399 0))(
  ( (array!62400 (arr!30051 (Array (_ BitVec 32) ValueCell!11131)) (size!30531 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62399)

(declare-fun mapValue!36872 () ValueCell!11131)

(declare-fun mapKey!36872 () (_ BitVec 32))

(declare-fun mapRest!36872 () (Array (_ BitVec 32) ValueCell!11131))

(assert (=> mapNonEmpty!36872 (= (arr!30051 _values!1278) (store mapRest!36872 mapKey!36872 mapValue!36872))))

(declare-fun b!987725 () Bool)

(declare-fun e!556986 () Bool)

(declare-fun e!556981 () Bool)

(assert (=> b!987725 (= e!556986 (and e!556981 mapRes!36872))))

(declare-fun condMapEmpty!36872 () Bool)

(declare-fun mapDefault!36872 () ValueCell!11131)

