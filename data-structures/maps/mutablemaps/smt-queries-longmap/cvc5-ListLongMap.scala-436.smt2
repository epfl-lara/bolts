; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8240 () Bool)

(assert start!8240)

(declare-fun b!52098 () Bool)

(declare-fun b_free!1621 () Bool)

(declare-fun b_next!1621 () Bool)

(assert (=> b!52098 (= b_free!1621 (not b_next!1621))))

(declare-fun tp!6963 () Bool)

(declare-fun b_and!2841 () Bool)

(assert (=> b!52098 (= tp!6963 b_and!2841)))

(declare-fun b!52105 () Bool)

(declare-fun b_free!1623 () Bool)

(declare-fun b_next!1623 () Bool)

(assert (=> b!52105 (= b_free!1623 (not b_next!1623))))

(declare-fun tp!6965 () Bool)

(declare-fun b_and!2843 () Bool)

(assert (=> b!52105 (= tp!6965 b_and!2843)))

(declare-fun mapIsEmpty!2351 () Bool)

(declare-fun mapRes!2351 () Bool)

(assert (=> mapIsEmpty!2351 mapRes!2351))

(declare-fun b!52090 () Bool)

(declare-fun e!33820 () Bool)

(declare-fun e!33828 () Bool)

(assert (=> b!52090 (= e!33820 e!33828)))

(declare-fun b!52091 () Bool)

(declare-fun e!33819 () Bool)

(declare-fun e!33824 () Bool)

(assert (=> b!52091 (= e!33819 (and e!33824 mapRes!2351))))

(declare-fun condMapEmpty!2352 () Bool)

(declare-datatypes ((V!2617 0))(
  ( (V!2618 (val!1158 Int)) )
))
(declare-datatypes ((array!3376 0))(
  ( (array!3377 (arr!1610 (Array (_ BitVec 32) (_ BitVec 64))) (size!1839 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!770 0))(
  ( (ValueCellFull!770 (v!2202 V!2617)) (EmptyCell!770) )
))
(declare-datatypes ((array!3378 0))(
  ( (array!3379 (arr!1611 (Array (_ BitVec 32) ValueCell!770)) (size!1840 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!448 0))(
  ( (LongMapFixedSize!449 (defaultEntry!1938 Int) (mask!5757 (_ BitVec 32)) (extraKeys!1829 (_ BitVec 32)) (zeroValue!1856 V!2617) (minValue!1856 V!2617) (_size!273 (_ BitVec 32)) (_keys!3558 array!3376) (_values!1921 array!3378) (_vacant!273 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!448)

(declare-fun mapDefault!2352 () ValueCell!770)

