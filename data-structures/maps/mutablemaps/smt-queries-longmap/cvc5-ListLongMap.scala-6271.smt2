; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80262 () Bool)

(assert start!80262)

(declare-fun b!942302 () Bool)

(declare-fun b_free!17947 () Bool)

(declare-fun b_next!17947 () Bool)

(assert (=> b!942302 (= b_free!17947 (not b_next!17947))))

(declare-fun tp!62345 () Bool)

(declare-fun b_and!29377 () Bool)

(assert (=> b!942302 (= tp!62345 b_and!29377)))

(declare-fun res!633326 () Bool)

(declare-fun e!529847 () Bool)

(assert (=> start!80262 (=> (not res!633326) (not e!529847))))

(declare-datatypes ((V!32239 0))(
  ( (V!32240 (val!10278 Int)) )
))
(declare-datatypes ((ValueCell!9746 0))(
  ( (ValueCellFull!9746 (v!12809 V!32239)) (EmptyCell!9746) )
))
(declare-datatypes ((array!56896 0))(
  ( (array!56897 (arr!27371 (Array (_ BitVec 32) ValueCell!9746)) (size!27837 (_ BitVec 32))) )
))
(declare-datatypes ((array!56898 0))(
  ( (array!56899 (arr!27372 (Array (_ BitVec 32) (_ BitVec 64))) (size!27838 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4642 0))(
  ( (LongMapFixedSize!4643 (defaultEntry!5612 Int) (mask!27212 (_ BitVec 32)) (extraKeys!5344 (_ BitVec 32)) (zeroValue!5448 V!32239) (minValue!5448 V!32239) (_size!2376 (_ BitVec 32)) (_keys!10480 array!56898) (_values!5635 array!56896) (_vacant!2376 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4642)

(declare-fun valid!1758 (LongMapFixedSize!4642) Bool)

(assert (=> start!80262 (= res!633326 (valid!1758 thiss!1141))))

(assert (=> start!80262 e!529847))

(declare-fun e!529842 () Bool)

(assert (=> start!80262 e!529842))

(assert (=> start!80262 true))

(declare-fun b!942296 () Bool)

(declare-fun res!633321 () Bool)

(assert (=> b!942296 (=> (not res!633321) (not e!529847))))

(assert (=> b!942296 (= res!633321 (and (= (size!27837 (_values!5635 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27212 thiss!1141))) (= (size!27838 (_keys!10480 thiss!1141)) (size!27837 (_values!5635 thiss!1141))) (bvsge (mask!27212 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5344 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5344 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942297 () Bool)

(declare-fun res!633327 () Bool)

(assert (=> b!942297 (=> (not res!633327) (not e!529847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56898 (_ BitVec 32)) Bool)

(assert (=> b!942297 (= res!633327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10480 thiss!1141) (mask!27212 thiss!1141)))))

(declare-fun b!942298 () Bool)

(declare-fun e!529845 () Bool)

(declare-fun tp_is_empty!20455 () Bool)

(assert (=> b!942298 (= e!529845 tp_is_empty!20455)))

(declare-fun b!942299 () Bool)

(declare-fun e!529844 () Bool)

(declare-fun e!529843 () Bool)

(declare-fun mapRes!32501 () Bool)

(assert (=> b!942299 (= e!529844 (and e!529843 mapRes!32501))))

(declare-fun condMapEmpty!32501 () Bool)

(declare-fun mapDefault!32501 () ValueCell!9746)

