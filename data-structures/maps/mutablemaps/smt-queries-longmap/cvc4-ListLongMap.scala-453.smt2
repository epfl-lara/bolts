; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8346 () Bool)

(assert start!8346)

(declare-fun b!55159 () Bool)

(declare-fun b_free!1833 () Bool)

(declare-fun b_next!1833 () Bool)

(assert (=> b!55159 (= b_free!1833 (not b_next!1833))))

(declare-fun tp!7600 () Bool)

(declare-fun b_and!3217 () Bool)

(assert (=> b!55159 (= tp!7600 b_and!3217)))

(declare-fun b!55152 () Bool)

(declare-fun b_free!1835 () Bool)

(declare-fun b_next!1835 () Bool)

(assert (=> b!55152 (= b_free!1835 (not b_next!1835))))

(declare-fun tp!7599 () Bool)

(declare-fun b_and!3219 () Bool)

(assert (=> b!55152 (= tp!7599 b_and!3219)))

(declare-fun b!55143 () Bool)

(declare-fun e!36172 () Bool)

(declare-fun tp_is_empty!2333 () Bool)

(assert (=> b!55143 (= e!36172 tp_is_empty!2333)))

(declare-fun b!55144 () Bool)

(declare-fun e!36175 () Bool)

(declare-fun e!36174 () Bool)

(assert (=> b!55144 (= e!36175 e!36174)))

(declare-fun b!55145 () Bool)

(declare-fun res!31091 () Bool)

(declare-fun e!36176 () Bool)

(assert (=> b!55145 (=> (not res!31091) (not e!36176))))

(declare-datatypes ((V!2757 0))(
  ( (V!2758 (val!1211 Int)) )
))
(declare-datatypes ((array!3588 0))(
  ( (array!3589 (arr!1716 (Array (_ BitVec 32) (_ BitVec 64))) (size!1945 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!823 0))(
  ( (ValueCellFull!823 (v!2304 V!2757)) (EmptyCell!823) )
))
(declare-datatypes ((array!3590 0))(
  ( (array!3591 (arr!1717 (Array (_ BitVec 32) ValueCell!823)) (size!1946 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!554 0))(
  ( (LongMapFixedSize!555 (defaultEntry!1991 Int) (mask!5844 (_ BitVec 32)) (extraKeys!1882 (_ BitVec 32)) (zeroValue!1909 V!2757) (minValue!1909 V!2757) (_size!326 (_ BitVec 32)) (_keys!3611 array!3588) (_values!1974 array!3590) (_vacant!326 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!554)

(declare-fun valid!216 (LongMapFixedSize!554) Bool)

(assert (=> b!55145 (= res!31091 (valid!216 newMap!16))))

(declare-fun b!55146 () Bool)

(declare-fun res!31092 () Bool)

(assert (=> b!55146 (=> (not res!31092) (not e!36176))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!364 0))(
  ( (Cell!365 (v!2305 LongMapFixedSize!554)) )
))
(declare-datatypes ((LongMap!364 0))(
  ( (LongMap!365 (underlying!193 Cell!364)) )
))
(declare-fun thiss!992 () LongMap!364)

(assert (=> b!55146 (= res!31092 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1945 (_keys!3611 (v!2305 (underlying!193 thiss!992)))))))))

(declare-fun b!55147 () Bool)

(declare-fun e!36178 () Bool)

(declare-fun mapRes!2669 () Bool)

(assert (=> b!55147 (= e!36178 (and e!36172 mapRes!2669))))

(declare-fun condMapEmpty!2670 () Bool)

(declare-fun mapDefault!2670 () ValueCell!823)

