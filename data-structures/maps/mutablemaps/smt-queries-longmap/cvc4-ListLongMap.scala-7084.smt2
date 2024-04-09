; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89598 () Bool)

(assert start!89598)

(declare-fun b!1027314 () Bool)

(declare-fun b_free!20561 () Bool)

(declare-fun b_next!20561 () Bool)

(assert (=> b!1027314 (= b_free!20561 (not b_next!20561))))

(declare-fun tp!72730 () Bool)

(declare-fun b_and!32825 () Bool)

(assert (=> b!1027314 (= tp!72730 b_and!32825)))

(declare-fun b!1027307 () Bool)

(declare-fun e!579796 () Bool)

(declare-fun e!579798 () Bool)

(declare-fun mapRes!37850 () Bool)

(assert (=> b!1027307 (= e!579796 (and e!579798 mapRes!37850))))

(declare-fun condMapEmpty!37850 () Bool)

(declare-datatypes ((V!37247 0))(
  ( (V!37248 (val!12191 Int)) )
))
(declare-datatypes ((ValueCell!11437 0))(
  ( (ValueCellFull!11437 (v!14761 V!37247)) (EmptyCell!11437) )
))
(declare-datatypes ((array!64596 0))(
  ( (array!64597 (arr!31103 (Array (_ BitVec 32) (_ BitVec 64))) (size!31617 (_ BitVec 32))) )
))
(declare-datatypes ((array!64598 0))(
  ( (array!64599 (arr!31104 (Array (_ BitVec 32) ValueCell!11437)) (size!31618 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5468 0))(
  ( (LongMapFixedSize!5469 (defaultEntry!6086 Int) (mask!29795 (_ BitVec 32)) (extraKeys!5818 (_ BitVec 32)) (zeroValue!5922 V!37247) (minValue!5922 V!37247) (_size!2789 (_ BitVec 32)) (_keys!11230 array!64596) (_values!6109 array!64598) (_vacant!2789 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5468)

(declare-fun mapDefault!37850 () ValueCell!11437)

