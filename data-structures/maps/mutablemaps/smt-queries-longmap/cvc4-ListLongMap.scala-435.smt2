; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8210 () Bool)

(assert start!8210)

(declare-fun b!51913 () Bool)

(declare-fun b_free!1617 () Bool)

(declare-fun b_next!1617 () Bool)

(assert (=> b!51913 (= b_free!1617 (not b_next!1617))))

(declare-fun tp!6946 () Bool)

(declare-fun b_and!2837 () Bool)

(assert (=> b!51913 (= tp!6946 b_and!2837)))

(declare-fun b!51918 () Bool)

(declare-fun b_free!1619 () Bool)

(declare-fun b_next!1619 () Bool)

(assert (=> b!51918 (= b_free!1619 (not b_next!1619))))

(declare-fun tp!6948 () Bool)

(declare-fun b_and!2839 () Bool)

(assert (=> b!51918 (= tp!6948 b_and!2839)))

(declare-fun b!51912 () Bool)

(declare-fun res!29624 () Bool)

(declare-fun e!33702 () Bool)

(assert (=> b!51912 (=> (not res!29624) (not e!33702))))

(declare-datatypes ((V!2613 0))(
  ( (V!2614 (val!1157 Int)) )
))
(declare-datatypes ((array!3370 0))(
  ( (array!3371 (arr!1608 (Array (_ BitVec 32) (_ BitVec 64))) (size!1836 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!769 0))(
  ( (ValueCellFull!769 (v!2199 V!2613)) (EmptyCell!769) )
))
(declare-datatypes ((array!3372 0))(
  ( (array!3373 (arr!1609 (Array (_ BitVec 32) ValueCell!769)) (size!1837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!446 0))(
  ( (LongMapFixedSize!447 (defaultEntry!1937 Int) (mask!5751 (_ BitVec 32)) (extraKeys!1828 (_ BitVec 32)) (zeroValue!1855 V!2613) (minValue!1855 V!2613) (_size!272 (_ BitVec 32)) (_keys!3555 array!3370) (_values!1920 array!3372) (_vacant!272 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!446)

(declare-fun valid!155 (LongMapFixedSize!446) Bool)

(assert (=> b!51912 (= res!29624 (valid!155 newMap!16))))

(declare-datatypes ((Cell!264 0))(
  ( (Cell!265 (v!2200 LongMapFixedSize!446)) )
))
(declare-datatypes ((LongMap!264 0))(
  ( (LongMap!265 (underlying!143 Cell!264)) )
))
(declare-fun thiss!992 () LongMap!264)

(declare-fun tp_is_empty!2225 () Bool)

(declare-fun e!33703 () Bool)

(declare-fun e!33700 () Bool)

(declare-fun array_inv!937 (array!3370) Bool)

(declare-fun array_inv!938 (array!3372) Bool)

(assert (=> b!51913 (= e!33703 (and tp!6946 tp_is_empty!2225 (array_inv!937 (_keys!3555 (v!2200 (underlying!143 thiss!992)))) (array_inv!938 (_values!1920 (v!2200 (underlying!143 thiss!992)))) e!33700))))

(declare-fun b!51914 () Bool)

(declare-fun e!33701 () Bool)

(assert (=> b!51914 (= e!33701 tp_is_empty!2225)))

(declare-fun mapIsEmpty!2339 () Bool)

(declare-fun mapRes!2340 () Bool)

(assert (=> mapIsEmpty!2339 mapRes!2340))

(declare-fun b!51916 () Bool)

(declare-fun res!29622 () Bool)

(assert (=> b!51916 (=> (not res!29622) (not e!33702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!51916 (= res!29622 (validMask!0 (mask!5751 (v!2200 (underlying!143 thiss!992)))))))

(declare-fun b!51917 () Bool)

(declare-fun e!33706 () Bool)

(assert (=> b!51917 (= e!33706 tp_is_empty!2225)))

(declare-fun e!33699 () Bool)

(declare-fun e!33708 () Bool)

(assert (=> b!51918 (= e!33699 (and tp!6948 tp_is_empty!2225 (array_inv!937 (_keys!3555 newMap!16)) (array_inv!938 (_values!1920 newMap!16)) e!33708))))

(declare-fun b!51919 () Bool)

(declare-fun mapRes!2339 () Bool)

(assert (=> b!51919 (= e!33700 (and e!33706 mapRes!2339))))

(declare-fun condMapEmpty!2339 () Bool)

(declare-fun mapDefault!2340 () ValueCell!769)

