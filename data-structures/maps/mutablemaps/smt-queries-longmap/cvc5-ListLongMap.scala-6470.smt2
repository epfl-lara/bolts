; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82688 () Bool)

(assert start!82688)

(declare-fun b_free!18793 () Bool)

(declare-fun b_next!18793 () Bool)

(assert (=> start!82688 (= b_free!18793 (not b_next!18793))))

(declare-fun tp!65500 () Bool)

(declare-fun b_and!30299 () Bool)

(assert (=> start!82688 (= tp!65500 b_and!30299)))

(declare-fun b!963507 () Bool)

(declare-fun res!644970 () Bool)

(declare-fun e!543280 () Bool)

(assert (=> b!963507 (=> (not res!644970) (not e!543280))))

(declare-datatypes ((array!59265 0))(
  ( (array!59266 (arr!28497 (Array (_ BitVec 32) (_ BitVec 64))) (size!28977 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59265)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!963507 (= res!644970 (validKeyInArray!0 (select (arr!28497 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34387 () Bool)

(declare-fun mapRes!34387 () Bool)

(assert (=> mapIsEmpty!34387 mapRes!34387))

(declare-fun b!963508 () Bool)

(declare-fun res!644969 () Bool)

(assert (=> b!963508 (=> (not res!644969) (not e!543280))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-datatypes ((V!33777 0))(
  ( (V!33778 (val!10848 Int)) )
))
(declare-datatypes ((ValueCell!10316 0))(
  ( (ValueCellFull!10316 (v!13406 V!33777)) (EmptyCell!10316) )
))
(declare-datatypes ((array!59267 0))(
  ( (array!59268 (arr!28498 (Array (_ BitVec 32) ValueCell!10316)) (size!28978 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59267)

(assert (=> b!963508 (= res!644969 (and (= (size!28978 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28977 _keys!1686) (size!28978 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!963509 () Bool)

(declare-fun res!644972 () Bool)

(assert (=> b!963509 (=> (not res!644972) (not e!543280))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!963509 (= res!644972 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28977 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28977 _keys!1686))))))

(declare-fun b!963510 () Bool)

(declare-fun res!644965 () Bool)

(assert (=> b!963510 (=> (not res!644965) (not e!543280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59265 (_ BitVec 32)) Bool)

(assert (=> b!963510 (= res!644965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!963511 () Bool)

(assert (=> b!963511 (= e!543280 (not true))))

(declare-fun minValue!1342 () V!33777)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33777)

(declare-datatypes ((tuple2!14020 0))(
  ( (tuple2!14021 (_1!7020 (_ BitVec 64)) (_2!7020 V!33777)) )
))
(declare-datatypes ((List!19902 0))(
  ( (Nil!19899) (Cons!19898 (h!21060 tuple2!14020) (t!28273 List!19902)) )
))
(declare-datatypes ((ListLongMap!12731 0))(
  ( (ListLongMap!12732 (toList!6381 List!19902)) )
))
(declare-fun contains!5435 (ListLongMap!12731 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3566 (array!59265 array!59267 (_ BitVec 32) (_ BitVec 32) V!33777 V!33777 (_ BitVec 32) Int) ListLongMap!12731)

(assert (=> b!963511 (contains!5435 (getCurrentListMap!3566 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28497 _keys!1686) i!803))))

(declare-datatypes ((Unit!32219 0))(
  ( (Unit!32220) )
))
(declare-fun lt!430938 () Unit!32219)

(declare-fun lemmaInListMapFromThenInFromMinusOne!18 (array!59265 array!59267 (_ BitVec 32) (_ BitVec 32) V!33777 V!33777 (_ BitVec 32) (_ BitVec 32) Int) Unit!32219)

(assert (=> b!963511 (= lt!430938 (lemmaInListMapFromThenInFromMinusOne!18 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!963512 () Bool)

(declare-fun res!644967 () Bool)

(assert (=> b!963512 (=> (not res!644967) (not e!543280))))

(assert (=> b!963512 (= res!644967 (contains!5435 (getCurrentListMap!3566 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28497 _keys!1686) i!803)))))

(declare-fun b!963513 () Bool)

(declare-fun res!644971 () Bool)

(assert (=> b!963513 (=> (not res!644971) (not e!543280))))

(assert (=> b!963513 (= res!644971 (bvsgt from!2084 newFrom!159))))

(declare-fun b!963514 () Bool)

(declare-fun res!644966 () Bool)

(assert (=> b!963514 (=> (not res!644966) (not e!543280))))

(declare-datatypes ((List!19903 0))(
  ( (Nil!19900) (Cons!19899 (h!21061 (_ BitVec 64)) (t!28274 List!19903)) )
))
(declare-fun arrayNoDuplicates!0 (array!59265 (_ BitVec 32) List!19903) Bool)

(assert (=> b!963514 (= res!644966 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19900))))

(declare-fun b!963515 () Bool)

(declare-fun e!543283 () Bool)

(declare-fun tp_is_empty!21595 () Bool)

(assert (=> b!963515 (= e!543283 tp_is_empty!21595)))

(declare-fun b!963516 () Bool)

(declare-fun e!543282 () Bool)

(assert (=> b!963516 (= e!543282 (and e!543283 mapRes!34387))))

(declare-fun condMapEmpty!34387 () Bool)

(declare-fun mapDefault!34387 () ValueCell!10316)

