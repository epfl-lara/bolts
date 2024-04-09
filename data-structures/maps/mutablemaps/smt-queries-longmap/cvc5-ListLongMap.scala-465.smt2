; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8728 () Bool)

(assert start!8728)

(declare-fun b!60377 () Bool)

(declare-fun b_free!1969 () Bool)

(declare-fun b_next!1969 () Bool)

(assert (=> b!60377 (= b_free!1969 (not b_next!1969))))

(declare-fun tp!8030 () Bool)

(declare-fun b_and!3661 () Bool)

(assert (=> b!60377 (= tp!8030 b_and!3661)))

(declare-fun b!60378 () Bool)

(declare-fun b_free!1971 () Bool)

(declare-fun b_next!1971 () Bool)

(assert (=> b!60378 (= b_free!1971 (not b_next!1971))))

(declare-fun tp!8029 () Bool)

(declare-fun b_and!3663 () Bool)

(assert (=> b!60378 (= tp!8029 b_and!3663)))

(declare-fun b!60370 () Bool)

(declare-fun e!39677 () Bool)

(declare-fun tp_is_empty!2401 () Bool)

(assert (=> b!60370 (= e!39677 tp_is_empty!2401)))

(declare-fun res!33397 () Bool)

(declare-fun e!39681 () Bool)

(assert (=> start!8728 (=> (not res!33397) (not e!39681))))

(declare-datatypes ((V!2849 0))(
  ( (V!2850 (val!1245 Int)) )
))
(declare-datatypes ((array!3730 0))(
  ( (array!3731 (arr!1784 (Array (_ BitVec 32) (_ BitVec 64))) (size!2015 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!857 0))(
  ( (ValueCellFull!857 (v!2394 V!2849)) (EmptyCell!857) )
))
(declare-datatypes ((array!3732 0))(
  ( (array!3733 (arr!1785 (Array (_ BitVec 32) ValueCell!857)) (size!2016 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!622 0))(
  ( (LongMapFixedSize!623 (defaultEntry!2063 Int) (mask!5957 (_ BitVec 32)) (extraKeys!1946 (_ BitVec 32)) (zeroValue!1977 V!2849) (minValue!1977 V!2849) (_size!360 (_ BitVec 32)) (_keys!3691 array!3730) (_values!2046 array!3732) (_vacant!360 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!432 0))(
  ( (Cell!433 (v!2395 LongMapFixedSize!622)) )
))
(declare-datatypes ((LongMap!432 0))(
  ( (LongMap!433 (underlying!227 Cell!432)) )
))
(declare-fun thiss!992 () LongMap!432)

(declare-fun valid!253 (LongMap!432) Bool)

(assert (=> start!8728 (= res!33397 (valid!253 thiss!992))))

(assert (=> start!8728 e!39681))

(declare-fun e!39669 () Bool)

(assert (=> start!8728 e!39669))

(assert (=> start!8728 true))

(declare-fun e!39673 () Bool)

(assert (=> start!8728 e!39673))

(declare-fun b!60371 () Bool)

(declare-fun e!39680 () Bool)

(assert (=> b!60371 (= e!39669 e!39680)))

(declare-fun b!60372 () Bool)

(declare-fun res!33400 () Bool)

(declare-fun e!39671 () Bool)

(assert (=> b!60372 (=> (not res!33400) (not e!39671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!60372 (= res!33400 (validMask!0 (mask!5957 (v!2395 (underlying!227 thiss!992)))))))

(declare-fun mapIsEmpty!2893 () Bool)

(declare-fun mapRes!2893 () Bool)

(assert (=> mapIsEmpty!2893 mapRes!2893))

(declare-fun b!60373 () Bool)

(declare-fun e!39676 () Bool)

(declare-fun e!39682 () Bool)

(declare-fun mapRes!2894 () Bool)

(assert (=> b!60373 (= e!39676 (and e!39682 mapRes!2894))))

(declare-fun condMapEmpty!2894 () Bool)

(declare-fun mapDefault!2894 () ValueCell!857)

