; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100144 () Bool)

(assert start!100144)

(declare-fun b!1193723 () Bool)

(declare-fun res!794304 () Bool)

(declare-fun e!678464 () Bool)

(assert (=> b!1193723 (=> (not res!794304) (not e!678464))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193723 (= res!794304 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47153 () Bool)

(declare-fun mapRes!47153 () Bool)

(declare-fun tp!89764 () Bool)

(declare-fun e!678465 () Bool)

(assert (=> mapNonEmpty!47153 (= mapRes!47153 (and tp!89764 e!678465))))

(declare-fun mapKey!47153 () (_ BitVec 32))

(declare-datatypes ((V!45417 0))(
  ( (V!45418 (val!15165 Int)) )
))
(declare-datatypes ((ValueCell!14399 0))(
  ( (ValueCellFull!14399 (v!17804 V!45417)) (EmptyCell!14399) )
))
(declare-fun mapValue!47153 () ValueCell!14399)

(declare-fun mapRest!47153 () (Array (_ BitVec 32) ValueCell!14399))

(declare-datatypes ((array!77198 0))(
  ( (array!77199 (arr!37245 (Array (_ BitVec 32) ValueCell!14399)) (size!37782 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77198)

(assert (=> mapNonEmpty!47153 (= (arr!37245 _values!996) (store mapRest!47153 mapKey!47153 mapValue!47153))))

(declare-fun b!1193724 () Bool)

(declare-fun e!678466 () Bool)

(declare-fun tp_is_empty!30217 () Bool)

(assert (=> b!1193724 (= e!678466 tp_is_empty!30217)))

(declare-fun b!1193725 () Bool)

(declare-fun e!678463 () Bool)

(assert (=> b!1193725 (= e!678463 (and e!678466 mapRes!47153))))

(declare-fun condMapEmpty!47153 () Bool)

(declare-fun mapDefault!47153 () ValueCell!14399)

