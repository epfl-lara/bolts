; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8316 () Bool)

(assert start!8316)

(declare-fun b!54312 () Bool)

(declare-fun b_free!1773 () Bool)

(declare-fun b_next!1773 () Bool)

(assert (=> b!54312 (= b_free!1773 (not b_next!1773))))

(declare-fun tp!7420 () Bool)

(declare-fun b_and!3097 () Bool)

(assert (=> b!54312 (= tp!7420 b_and!3097)))

(declare-fun b!54327 () Bool)

(declare-fun b_free!1775 () Bool)

(declare-fun b_next!1775 () Bool)

(assert (=> b!54327 (= b_free!1775 (not b_next!1775))))

(declare-fun tp!7422 () Bool)

(declare-fun b_and!3099 () Bool)

(assert (=> b!54327 (= tp!7422 b_and!3099)))

(declare-fun b!54308 () Bool)

(declare-fun e!35467 () Bool)

(declare-fun tp_is_empty!2303 () Bool)

(assert (=> b!54308 (= e!35467 tp_is_empty!2303)))

(declare-fun b!54309 () Bool)

(declare-fun e!35473 () Bool)

(declare-fun e!35465 () Bool)

(declare-fun mapRes!2580 () Bool)

(assert (=> b!54309 (= e!35473 (and e!35465 mapRes!2580))))

(declare-fun condMapEmpty!2580 () Bool)

(declare-datatypes ((V!2717 0))(
  ( (V!2718 (val!1196 Int)) )
))
(declare-datatypes ((array!3528 0))(
  ( (array!3529 (arr!1686 (Array (_ BitVec 32) (_ BitVec 64))) (size!1915 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!808 0))(
  ( (ValueCellFull!808 (v!2275 V!2717)) (EmptyCell!808) )
))
(declare-datatypes ((array!3530 0))(
  ( (array!3531 (arr!1687 (Array (_ BitVec 32) ValueCell!808)) (size!1916 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!524 0))(
  ( (LongMapFixedSize!525 (defaultEntry!1976 Int) (mask!5819 (_ BitVec 32)) (extraKeys!1867 (_ BitVec 32)) (zeroValue!1894 V!2717) (minValue!1894 V!2717) (_size!311 (_ BitVec 32)) (_keys!3596 array!3528) (_values!1959 array!3530) (_vacant!311 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!524)

(declare-fun mapDefault!2580 () ValueCell!808)

