; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82978 () Bool)

(assert start!82978)

(declare-fun b_free!19077 () Bool)

(declare-fun b_next!19077 () Bool)

(assert (=> start!82978 (= b_free!19077 (not b_next!19077))))

(declare-fun tp!66361 () Bool)

(declare-fun b_and!30583 () Bool)

(assert (=> start!82978 (= tp!66361 b_and!30583)))

(declare-fun b!967964 () Bool)

(declare-fun res!648120 () Bool)

(declare-fun e!545542 () Bool)

(assert (=> b!967964 (=> (not res!648120) (not e!545542))))

(declare-datatypes ((array!59821 0))(
  ( (array!59822 (arr!28775 (Array (_ BitVec 32) (_ BitVec 64))) (size!29255 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59821)

(declare-datatypes ((List!20104 0))(
  ( (Nil!20101) (Cons!20100 (h!21262 (_ BitVec 64)) (t!28475 List!20104)) )
))
(declare-fun arrayNoDuplicates!0 (array!59821 (_ BitVec 32) List!20104) Bool)

(assert (=> b!967964 (= res!648120 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20101))))

(declare-fun b!967966 () Bool)

(declare-fun res!648119 () Bool)

(assert (=> b!967966 (=> (not res!648119) (not e!545542))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34163 0))(
  ( (V!34164 (val!10993 Int)) )
))
(declare-datatypes ((ValueCell!10461 0))(
  ( (ValueCellFull!10461 (v!13551 V!34163)) (EmptyCell!10461) )
))
(declare-datatypes ((array!59823 0))(
  ( (array!59824 (arr!28776 (Array (_ BitVec 32) ValueCell!10461)) (size!29256 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59823)

(declare-fun minValue!1342 () V!34163)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34163)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14232 0))(
  ( (tuple2!14233 (_1!7126 (_ BitVec 64)) (_2!7126 V!34163)) )
))
(declare-datatypes ((List!20105 0))(
  ( (Nil!20102) (Cons!20101 (h!21263 tuple2!14232) (t!28476 List!20105)) )
))
(declare-datatypes ((ListLongMap!12943 0))(
  ( (ListLongMap!12944 (toList!6487 List!20105)) )
))
(declare-fun contains!5538 (ListLongMap!12943 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3672 (array!59821 array!59823 (_ BitVec 32) (_ BitVec 32) V!34163 V!34163 (_ BitVec 32) Int) ListLongMap!12943)

(assert (=> b!967966 (= res!648119 (contains!5538 (getCurrentListMap!3672 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28775 _keys!1686) i!803)))))

(declare-fun b!967967 () Bool)

(declare-fun res!648123 () Bool)

(assert (=> b!967967 (=> (not res!648123) (not e!545542))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967967 (= res!648123 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967968 () Bool)

(declare-fun e!545545 () Bool)

(assert (=> b!967968 (= e!545545 (bvsge i!803 #b00000000000000000000000000000000))))

(assert (=> b!967968 (contains!5538 (getCurrentListMap!3672 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28775 _keys!1686) i!803))))

(declare-datatypes ((Unit!32323 0))(
  ( (Unit!32324) )
))
(declare-fun lt!431432 () Unit!32323)

(declare-fun lemmaInListMapFromThenInFromSmaller!33 (array!59821 array!59823 (_ BitVec 32) (_ BitVec 32) V!34163 V!34163 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32323)

(assert (=> b!967968 (= lt!431432 (lemmaInListMapFromThenInFromSmaller!33 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun b!967969 () Bool)

(declare-fun res!648117 () Bool)

(assert (=> b!967969 (=> (not res!648117) (not e!545542))))

(assert (=> b!967969 (= res!648117 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29255 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29255 _keys!1686))))))

(declare-fun b!967970 () Bool)

(assert (=> b!967970 (= e!545542 (not e!545545))))

(declare-fun res!648124 () Bool)

(assert (=> b!967970 (=> res!648124 e!545545)))

(assert (=> b!967970 (= res!648124 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29255 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!967970 (contains!5538 (getCurrentListMap!3672 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28775 _keys!1686) i!803))))

(declare-fun lt!431433 () Unit!32323)

(declare-fun lemmaInListMapFromThenInFromMinusOne!68 (array!59821 array!59823 (_ BitVec 32) (_ BitVec 32) V!34163 V!34163 (_ BitVec 32) (_ BitVec 32) Int) Unit!32323)

(assert (=> b!967970 (= lt!431433 (lemmaInListMapFromThenInFromMinusOne!68 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967971 () Bool)

(declare-fun res!648122 () Bool)

(assert (=> b!967971 (=> (not res!648122) (not e!545542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967971 (= res!648122 (validKeyInArray!0 (select (arr!28775 _keys!1686) i!803)))))

(declare-fun b!967972 () Bool)

(declare-fun e!545541 () Bool)

(declare-fun e!545544 () Bool)

(declare-fun mapRes!34822 () Bool)

(assert (=> b!967972 (= e!545541 (and e!545544 mapRes!34822))))

(declare-fun condMapEmpty!34822 () Bool)

(declare-fun mapDefault!34822 () ValueCell!10461)

(assert (=> b!967972 (= condMapEmpty!34822 (= (arr!28776 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10461)) mapDefault!34822)))))

(declare-fun mapIsEmpty!34822 () Bool)

(assert (=> mapIsEmpty!34822 mapRes!34822))

(declare-fun b!967973 () Bool)

(declare-fun res!648121 () Bool)

(assert (=> b!967973 (=> (not res!648121) (not e!545542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59821 (_ BitVec 32)) Bool)

(assert (=> b!967973 (= res!648121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967974 () Bool)

(declare-fun e!545540 () Bool)

(declare-fun tp_is_empty!21885 () Bool)

(assert (=> b!967974 (= e!545540 tp_is_empty!21885)))

(declare-fun b!967965 () Bool)

(assert (=> b!967965 (= e!545544 tp_is_empty!21885)))

(declare-fun res!648118 () Bool)

(assert (=> start!82978 (=> (not res!648118) (not e!545542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82978 (= res!648118 (validMask!0 mask!2110))))

(assert (=> start!82978 e!545542))

(assert (=> start!82978 true))

(declare-fun array_inv!22173 (array!59823) Bool)

(assert (=> start!82978 (and (array_inv!22173 _values!1400) e!545541)))

(declare-fun array_inv!22174 (array!59821) Bool)

(assert (=> start!82978 (array_inv!22174 _keys!1686)))

(assert (=> start!82978 tp!66361))

(assert (=> start!82978 tp_is_empty!21885))

(declare-fun mapNonEmpty!34822 () Bool)

(declare-fun tp!66360 () Bool)

(assert (=> mapNonEmpty!34822 (= mapRes!34822 (and tp!66360 e!545540))))

(declare-fun mapValue!34822 () ValueCell!10461)

(declare-fun mapKey!34822 () (_ BitVec 32))

(declare-fun mapRest!34822 () (Array (_ BitVec 32) ValueCell!10461))

(assert (=> mapNonEmpty!34822 (= (arr!28776 _values!1400) (store mapRest!34822 mapKey!34822 mapValue!34822))))

(declare-fun b!967975 () Bool)

(declare-fun res!648125 () Bool)

(assert (=> b!967975 (=> (not res!648125) (not e!545542))))

(assert (=> b!967975 (= res!648125 (and (= (size!29256 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29255 _keys!1686) (size!29256 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(assert (= (and start!82978 res!648118) b!967975))

(assert (= (and b!967975 res!648125) b!967973))

(assert (= (and b!967973 res!648121) b!967964))

(assert (= (and b!967964 res!648120) b!967969))

(assert (= (and b!967969 res!648117) b!967971))

(assert (= (and b!967971 res!648122) b!967966))

(assert (= (and b!967966 res!648119) b!967967))

(assert (= (and b!967967 res!648123) b!967970))

(assert (= (and b!967970 (not res!648124)) b!967968))

(assert (= (and b!967972 condMapEmpty!34822) mapIsEmpty!34822))

(assert (= (and b!967972 (not condMapEmpty!34822)) mapNonEmpty!34822))

(get-info :version)

(assert (= (and mapNonEmpty!34822 ((_ is ValueCellFull!10461) mapValue!34822)) b!967974))

(assert (= (and b!967972 ((_ is ValueCellFull!10461) mapDefault!34822)) b!967965))

(assert (= start!82978 b!967972))

(declare-fun m!896481 () Bool)

(assert (=> b!967968 m!896481))

(declare-fun m!896483 () Bool)

(assert (=> b!967968 m!896483))

(assert (=> b!967968 m!896481))

(assert (=> b!967968 m!896483))

(declare-fun m!896485 () Bool)

(assert (=> b!967968 m!896485))

(declare-fun m!896487 () Bool)

(assert (=> b!967968 m!896487))

(declare-fun m!896489 () Bool)

(assert (=> start!82978 m!896489))

(declare-fun m!896491 () Bool)

(assert (=> start!82978 m!896491))

(declare-fun m!896493 () Bool)

(assert (=> start!82978 m!896493))

(declare-fun m!896495 () Bool)

(assert (=> b!967966 m!896495))

(assert (=> b!967966 m!896483))

(assert (=> b!967966 m!896495))

(assert (=> b!967966 m!896483))

(declare-fun m!896497 () Bool)

(assert (=> b!967966 m!896497))

(declare-fun m!896499 () Bool)

(assert (=> b!967970 m!896499))

(assert (=> b!967970 m!896483))

(assert (=> b!967970 m!896499))

(assert (=> b!967970 m!896483))

(declare-fun m!896501 () Bool)

(assert (=> b!967970 m!896501))

(declare-fun m!896503 () Bool)

(assert (=> b!967970 m!896503))

(assert (=> b!967971 m!896483))

(assert (=> b!967971 m!896483))

(declare-fun m!896505 () Bool)

(assert (=> b!967971 m!896505))

(declare-fun m!896507 () Bool)

(assert (=> mapNonEmpty!34822 m!896507))

(declare-fun m!896509 () Bool)

(assert (=> b!967973 m!896509))

(declare-fun m!896511 () Bool)

(assert (=> b!967964 m!896511))

(check-sat (not b!967966) (not b!967970) (not b!967964) (not b!967973) (not b!967968) (not b!967971) (not mapNonEmpty!34822) tp_is_empty!21885 b_and!30583 (not start!82978) (not b_next!19077))
(check-sat b_and!30583 (not b_next!19077))
