; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8382 () Bool)

(assert start!8382)

(declare-fun b!56276 () Bool)

(declare-fun b_free!1905 () Bool)

(declare-fun b_next!1905 () Bool)

(assert (=> b!56276 (= b_free!1905 (not b_next!1905))))

(declare-fun tp!7815 () Bool)

(declare-fun b_and!3361 () Bool)

(assert (=> b!56276 (= tp!7815 b_and!3361)))

(declare-fun b!56274 () Bool)

(declare-fun b_free!1907 () Bool)

(declare-fun b_next!1907 () Bool)

(assert (=> b!56274 (= b_free!1907 (not b_next!1907))))

(declare-fun tp!7817 () Bool)

(declare-fun b_and!3363 () Bool)

(assert (=> b!56274 (= tp!7817 b_and!3363)))

(declare-fun b!56273 () Bool)

(declare-fun e!37042 () Bool)

(declare-fun tp_is_empty!2369 () Bool)

(assert (=> b!56273 (= e!37042 tp_is_empty!2369)))

(declare-fun e!37036 () Bool)

(declare-fun e!37037 () Bool)

(declare-datatypes ((V!2805 0))(
  ( (V!2806 (val!1229 Int)) )
))
(declare-datatypes ((array!3660 0))(
  ( (array!3661 (arr!1752 (Array (_ BitVec 32) (_ BitVec 64))) (size!1981 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!841 0))(
  ( (ValueCellFull!841 (v!2340 V!2805)) (EmptyCell!841) )
))
(declare-datatypes ((array!3662 0))(
  ( (array!3663 (arr!1753 (Array (_ BitVec 32) ValueCell!841)) (size!1982 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!590 0))(
  ( (LongMapFixedSize!591 (defaultEntry!2009 Int) (mask!5874 (_ BitVec 32)) (extraKeys!1900 (_ BitVec 32)) (zeroValue!1927 V!2805) (minValue!1927 V!2805) (_size!344 (_ BitVec 32)) (_keys!3629 array!3660) (_values!1992 array!3662) (_vacant!344 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!590)

(declare-fun array_inv!1031 (array!3660) Bool)

(declare-fun array_inv!1032 (array!3662) Bool)

(assert (=> b!56274 (= e!37036 (and tp!7817 tp_is_empty!2369 (array_inv!1031 (_keys!3629 newMap!16)) (array_inv!1032 (_values!1992 newMap!16)) e!37037))))

(declare-fun b!56275 () Bool)

(declare-fun e!37043 () Bool)

(assert (=> b!56275 (= e!37043 tp_is_empty!2369)))

(declare-datatypes ((Cell!400 0))(
  ( (Cell!401 (v!2341 LongMapFixedSize!590)) )
))
(declare-datatypes ((LongMap!400 0))(
  ( (LongMap!401 (underlying!211 Cell!400)) )
))
(declare-fun thiss!992 () LongMap!400)

(declare-fun e!37035 () Bool)

(declare-fun e!37039 () Bool)

(assert (=> b!56276 (= e!37035 (and tp!7815 tp_is_empty!2369 (array_inv!1031 (_keys!3629 (v!2341 (underlying!211 thiss!992)))) (array_inv!1032 (_values!1992 (v!2341 (underlying!211 thiss!992)))) e!37039))))

(declare-fun b!56277 () Bool)

(declare-fun mapRes!2778 () Bool)

(assert (=> b!56277 (= e!37037 (and e!37043 mapRes!2778))))

(declare-fun condMapEmpty!2777 () Bool)

(declare-fun mapDefault!2778 () ValueCell!841)

