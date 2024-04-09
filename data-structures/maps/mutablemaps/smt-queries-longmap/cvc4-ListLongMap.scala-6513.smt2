; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82950 () Bool)

(assert start!82950)

(declare-fun b_free!19049 () Bool)

(declare-fun b_next!19049 () Bool)

(assert (=> start!82950 (= b_free!19049 (not b_next!19049))))

(declare-fun tp!66277 () Bool)

(declare-fun b_and!30555 () Bool)

(assert (=> start!82950 (= tp!66277 b_and!30555)))

(declare-fun res!647779 () Bool)

(declare-fun e!545328 () Bool)

(assert (=> start!82950 (=> (not res!647779) (not e!545328))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82950 (= res!647779 (validMask!0 mask!2110))))

(assert (=> start!82950 e!545328))

(assert (=> start!82950 true))

(declare-datatypes ((V!34125 0))(
  ( (V!34126 (val!10979 Int)) )
))
(declare-datatypes ((ValueCell!10447 0))(
  ( (ValueCellFull!10447 (v!13537 V!34125)) (EmptyCell!10447) )
))
(declare-datatypes ((array!59769 0))(
  ( (array!59770 (arr!28749 (Array (_ BitVec 32) ValueCell!10447)) (size!29229 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59769)

(declare-fun e!545326 () Bool)

(declare-fun array_inv!22151 (array!59769) Bool)

(assert (=> start!82950 (and (array_inv!22151 _values!1400) e!545326)))

(declare-datatypes ((array!59771 0))(
  ( (array!59772 (arr!28750 (Array (_ BitVec 32) (_ BitVec 64))) (size!29230 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59771)

(declare-fun array_inv!22152 (array!59771) Bool)

(assert (=> start!82950 (array_inv!22152 _keys!1686)))

(assert (=> start!82950 tp!66277))

(declare-fun tp_is_empty!21857 () Bool)

(assert (=> start!82950 tp_is_empty!21857))

(declare-fun b!967497 () Bool)

(declare-fun res!647776 () Bool)

(assert (=> b!967497 (=> (not res!647776) (not e!545328))))

(declare-datatypes ((List!20085 0))(
  ( (Nil!20082) (Cons!20081 (h!21243 (_ BitVec 64)) (t!28456 List!20085)) )
))
(declare-fun arrayNoDuplicates!0 (array!59771 (_ BitVec 32) List!20085) Bool)

(assert (=> b!967497 (= res!647776 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20082))))

(declare-fun mapNonEmpty!34780 () Bool)

(declare-fun mapRes!34780 () Bool)

(declare-fun tp!66276 () Bool)

(declare-fun e!545325 () Bool)

(assert (=> mapNonEmpty!34780 (= mapRes!34780 (and tp!66276 e!545325))))

(declare-fun mapRest!34780 () (Array (_ BitVec 32) ValueCell!10447))

(declare-fun mapKey!34780 () (_ BitVec 32))

(declare-fun mapValue!34780 () ValueCell!10447)

(assert (=> mapNonEmpty!34780 (= (arr!28749 _values!1400) (store mapRest!34780 mapKey!34780 mapValue!34780))))

(declare-fun b!967498 () Bool)

(declare-fun res!647781 () Bool)

(assert (=> b!967498 (=> (not res!647781) (not e!545328))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!967498 (= res!647781 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29230 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29230 _keys!1686))))))

(declare-fun b!967499 () Bool)

(assert (=> b!967499 (= e!545328 (not (and (bvsge (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2084 #b00000000000000000000000000000001) (size!29230 _keys!1686)))))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34125)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34125)

(declare-datatypes ((tuple2!14212 0))(
  ( (tuple2!14213 (_1!7116 (_ BitVec 64)) (_2!7116 V!34125)) )
))
(declare-datatypes ((List!20086 0))(
  ( (Nil!20083) (Cons!20082 (h!21244 tuple2!14212) (t!28457 List!20086)) )
))
(declare-datatypes ((ListLongMap!12923 0))(
  ( (ListLongMap!12924 (toList!6477 List!20086)) )
))
(declare-fun contains!5528 (ListLongMap!12923 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3662 (array!59771 array!59769 (_ BitVec 32) (_ BitVec 32) V!34125 V!34125 (_ BitVec 32) Int) ListLongMap!12923)

(assert (=> b!967499 (contains!5528 (getCurrentListMap!3662 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28750 _keys!1686) i!803))))

(declare-datatypes ((Unit!32305 0))(
  ( (Unit!32306) )
))
(declare-fun lt!431385 () Unit!32305)

(declare-fun lemmaInListMapFromThenInFromMinusOne!59 (array!59771 array!59769 (_ BitVec 32) (_ BitVec 32) V!34125 V!34125 (_ BitVec 32) (_ BitVec 32) Int) Unit!32305)

(assert (=> b!967499 (= lt!431385 (lemmaInListMapFromThenInFromMinusOne!59 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!967500 () Bool)

(declare-fun e!545327 () Bool)

(assert (=> b!967500 (= e!545327 tp_is_empty!21857)))

(declare-fun b!967501 () Bool)

(declare-fun res!647777 () Bool)

(assert (=> b!967501 (=> (not res!647777) (not e!545328))))

(assert (=> b!967501 (= res!647777 (and (= (size!29229 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29230 _keys!1686) (size!29229 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967502 () Bool)

(declare-fun res!647782 () Bool)

(assert (=> b!967502 (=> (not res!647782) (not e!545328))))

(assert (=> b!967502 (= res!647782 (contains!5528 (getCurrentListMap!3662 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28750 _keys!1686) i!803)))))

(declare-fun b!967503 () Bool)

(declare-fun res!647783 () Bool)

(assert (=> b!967503 (=> (not res!647783) (not e!545328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59771 (_ BitVec 32)) Bool)

(assert (=> b!967503 (= res!647783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34780 () Bool)

(assert (=> mapIsEmpty!34780 mapRes!34780))

(declare-fun b!967504 () Bool)

(declare-fun res!647780 () Bool)

(assert (=> b!967504 (=> (not res!647780) (not e!545328))))

(assert (=> b!967504 (= res!647780 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967505 () Bool)

(assert (=> b!967505 (= e!545325 tp_is_empty!21857)))

(declare-fun b!967506 () Bool)

(declare-fun res!647778 () Bool)

(assert (=> b!967506 (=> (not res!647778) (not e!545328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967506 (= res!647778 (validKeyInArray!0 (select (arr!28750 _keys!1686) i!803)))))

(declare-fun b!967507 () Bool)

(assert (=> b!967507 (= e!545326 (and e!545327 mapRes!34780))))

(declare-fun condMapEmpty!34780 () Bool)

(declare-fun mapDefault!34780 () ValueCell!10447)

