; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21952 () Bool)

(assert start!21952)

(declare-fun b!223757 () Bool)

(declare-fun b_free!6007 () Bool)

(declare-fun b_next!6007 () Bool)

(assert (=> b!223757 (= b_free!6007 (not b_next!6007))))

(declare-fun tp!21163 () Bool)

(declare-fun b_and!12923 () Bool)

(assert (=> b!223757 (= tp!21163 b_and!12923)))

(declare-fun b!223753 () Bool)

(declare-fun e!145326 () Bool)

(declare-fun tp_is_empty!5869 () Bool)

(assert (=> b!223753 (= e!145326 tp_is_empty!5869)))

(declare-fun b!223754 () Bool)

(declare-fun res!110033 () Bool)

(declare-fun e!145334 () Bool)

(assert (=> b!223754 (=> (not res!110033) (not e!145334))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7473 0))(
  ( (V!7474 (val!2979 Int)) )
))
(declare-datatypes ((ValueCell!2591 0))(
  ( (ValueCellFull!2591 (v!4995 V!7473)) (EmptyCell!2591) )
))
(declare-datatypes ((array!10980 0))(
  ( (array!10981 (arr!5209 (Array (_ BitVec 32) ValueCell!2591)) (size!5542 (_ BitVec 32))) )
))
(declare-datatypes ((array!10982 0))(
  ( (array!10983 (arr!5210 (Array (_ BitVec 32) (_ BitVec 64))) (size!5543 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3082 0))(
  ( (LongMapFixedSize!3083 (defaultEntry!4200 Int) (mask!10030 (_ BitVec 32)) (extraKeys!3937 (_ BitVec 32)) (zeroValue!4041 V!7473) (minValue!4041 V!7473) (_size!1590 (_ BitVec 32)) (_keys!6254 array!10982) (_values!4183 array!10980) (_vacant!1590 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3082)

(assert (=> b!223754 (= res!110033 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5543 (_keys!6254 thiss!1504)))))))

(declare-fun b!223755 () Bool)

(declare-fun res!110028 () Bool)

(declare-fun e!145336 () Bool)

(assert (=> b!223755 (=> (not res!110028) (not e!145336))))

(declare-fun call!20854 () Bool)

(assert (=> b!223755 (= res!110028 call!20854)))

(declare-fun e!145335 () Bool)

(assert (=> b!223755 (= e!145335 e!145336)))

(declare-fun b!223756 () Bool)

(declare-fun res!110041 () Bool)

(assert (=> b!223756 (=> (not res!110041) (not e!145336))))

(declare-datatypes ((SeekEntryResult!862 0))(
  ( (MissingZero!862 (index!5618 (_ BitVec 32))) (Found!862 (index!5619 (_ BitVec 32))) (Intermediate!862 (undefined!1674 Bool) (index!5620 (_ BitVec 32)) (x!23122 (_ BitVec 32))) (Undefined!862) (MissingVacant!862 (index!5621 (_ BitVec 32))) )
))
(declare-fun lt!113013 () SeekEntryResult!862)

(assert (=> b!223756 (= res!110041 (= (select (arr!5210 (_keys!6254 thiss!1504)) (index!5618 lt!113013)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!145340 () Bool)

(declare-fun e!145341 () Bool)

(declare-fun array_inv!3437 (array!10982) Bool)

(declare-fun array_inv!3438 (array!10980) Bool)

(assert (=> b!223757 (= e!145340 (and tp!21163 tp_is_empty!5869 (array_inv!3437 (_keys!6254 thiss!1504)) (array_inv!3438 (_values!4183 thiss!1504)) e!145341))))

(declare-fun b!223758 () Bool)

(declare-fun e!145339 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((List!3346 0))(
  ( (Nil!3343) (Cons!3342 (h!3990 (_ BitVec 64)) (t!8313 List!3346)) )
))
(declare-fun contains!1545 (List!3346 (_ BitVec 64)) Bool)

(assert (=> b!223758 (= e!145339 (contains!1545 Nil!3343 key!932))))

(declare-fun b!223759 () Bool)

(declare-fun e!145325 () Bool)

(assert (=> b!223759 (= e!145325 (not (contains!1545 Nil!3343 key!932)))))

(declare-fun res!110025 () Bool)

(declare-fun e!145327 () Bool)

(assert (=> start!21952 (=> (not res!110025) (not e!145327))))

(declare-fun valid!1234 (LongMapFixedSize!3082) Bool)

(assert (=> start!21952 (= res!110025 (valid!1234 thiss!1504))))

(assert (=> start!21952 e!145327))

(assert (=> start!21952 e!145340))

(assert (=> start!21952 true))

(declare-fun b!223760 () Bool)

(declare-fun mapRes!9973 () Bool)

(assert (=> b!223760 (= e!145341 (and e!145326 mapRes!9973))))

(declare-fun condMapEmpty!9973 () Bool)

(declare-fun mapDefault!9973 () ValueCell!2591)

