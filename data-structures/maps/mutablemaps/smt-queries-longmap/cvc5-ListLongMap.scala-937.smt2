; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20730 () Bool)

(assert start!20730)

(declare-fun b_free!5377 () Bool)

(declare-fun b_next!5377 () Bool)

(assert (=> start!20730 (= b_free!5377 (not b_next!5377))))

(declare-fun tp!19163 () Bool)

(declare-fun b_and!12141 () Bool)

(assert (=> start!20730 (= tp!19163 b_and!12141)))

(declare-fun mapNonEmpty!8918 () Bool)

(declare-fun mapRes!8918 () Bool)

(declare-fun tp!19162 () Bool)

(declare-fun e!135324 () Bool)

(assert (=> mapNonEmpty!8918 (= mapRes!8918 (and tp!19162 e!135324))))

(declare-datatypes ((V!6625 0))(
  ( (V!6626 (val!2661 Int)) )
))
(declare-datatypes ((ValueCell!2273 0))(
  ( (ValueCellFull!2273 (v!4627 V!6625)) (EmptyCell!2273) )
))
(declare-fun mapRest!8918 () (Array (_ BitVec 32) ValueCell!2273))

(declare-fun mapKey!8918 () (_ BitVec 32))

(declare-datatypes ((array!9674 0))(
  ( (array!9675 (arr!4587 (Array (_ BitVec 32) ValueCell!2273)) (size!4912 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9674)

(declare-fun mapValue!8918 () ValueCell!2273)

(assert (=> mapNonEmpty!8918 (= (arr!4587 _values!649) (store mapRest!8918 mapKey!8918 mapValue!8918))))

(declare-fun b!207222 () Bool)

(declare-fun res!100585 () Bool)

(declare-fun e!135321 () Bool)

(assert (=> b!207222 (=> (not res!100585) (not e!135321))))

(declare-datatypes ((array!9676 0))(
  ( (array!9677 (arr!4588 (Array (_ BitVec 32) (_ BitVec 64))) (size!4913 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9676)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207222 (= res!100585 (and (= (size!4912 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4913 _keys!825) (size!4912 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!207224 () Bool)

(declare-fun tp_is_empty!5233 () Bool)

(assert (=> b!207224 (= e!135324 tp_is_empty!5233)))

(declare-fun mapIsEmpty!8918 () Bool)

(assert (=> mapIsEmpty!8918 mapRes!8918))

(declare-fun b!207225 () Bool)

(declare-fun res!100579 () Bool)

(assert (=> b!207225 (=> (not res!100579) (not e!135321))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207225 (= res!100579 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4913 _keys!825))))))

(declare-fun b!207226 () Bool)

(declare-fun e!135322 () Bool)

(declare-fun e!135325 () Bool)

(assert (=> b!207226 (= e!135322 (and e!135325 mapRes!8918))))

(declare-fun condMapEmpty!8918 () Bool)

(declare-fun mapDefault!8918 () ValueCell!2273)

