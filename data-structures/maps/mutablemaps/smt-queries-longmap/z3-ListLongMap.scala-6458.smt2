; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82618 () Bool)

(assert start!82618)

(declare-fun b_free!18723 () Bool)

(declare-fun b_next!18723 () Bool)

(assert (=> start!82618 (= b_free!18723 (not b_next!18723))))

(declare-fun tp!65290 () Bool)

(declare-fun b_and!30229 () Bool)

(assert (=> start!82618 (= tp!65290 b_and!30229)))

(declare-fun mapNonEmpty!34282 () Bool)

(declare-fun mapRes!34282 () Bool)

(declare-fun tp!65289 () Bool)

(declare-fun e!542755 () Bool)

(assert (=> mapNonEmpty!34282 (= mapRes!34282 (and tp!65289 e!542755))))

(declare-datatypes ((V!33683 0))(
  ( (V!33684 (val!10813 Int)) )
))
(declare-datatypes ((ValueCell!10281 0))(
  ( (ValueCellFull!10281 (v!13371 V!33683)) (EmptyCell!10281) )
))
(declare-fun mapRest!34282 () (Array (_ BitVec 32) ValueCell!10281))

(declare-fun mapKey!34282 () (_ BitVec 32))

(declare-datatypes ((array!59129 0))(
  ( (array!59130 (arr!28429 (Array (_ BitVec 32) ValueCell!10281)) (size!28909 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59129)

(declare-fun mapValue!34282 () ValueCell!10281)

(assert (=> mapNonEmpty!34282 (= (arr!28429 _values!1400) (store mapRest!34282 mapKey!34282 mapValue!34282))))

(declare-fun b!962396 () Bool)

(declare-fun e!542758 () Bool)

(declare-fun e!542756 () Bool)

(assert (=> b!962396 (= e!542758 (and e!542756 mapRes!34282))))

(declare-fun condMapEmpty!34282 () Bool)

(declare-fun mapDefault!34282 () ValueCell!10281)

(assert (=> b!962396 (= condMapEmpty!34282 (= (arr!28429 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10281)) mapDefault!34282)))))

(declare-fun b!962397 () Bool)

(declare-fun res!644170 () Bool)

(declare-fun e!542757 () Bool)

(assert (=> b!962397 (=> (not res!644170) (not e!542757))))

(declare-datatypes ((array!59131 0))(
  ( (array!59132 (arr!28430 (Array (_ BitVec 32) (_ BitVec 64))) (size!28910 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59131)

(declare-datatypes ((List!19852 0))(
  ( (Nil!19849) (Cons!19848 (h!21010 (_ BitVec 64)) (t!28223 List!19852)) )
))
(declare-fun arrayNoDuplicates!0 (array!59131 (_ BitVec 32) List!19852) Bool)

(assert (=> b!962397 (= res!644170 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19849))))

(declare-fun b!962398 () Bool)

(declare-fun tp_is_empty!21525 () Bool)

(assert (=> b!962398 (= e!542755 tp_is_empty!21525)))

(declare-fun res!644172 () Bool)

(assert (=> start!82618 (=> (not res!644172) (not e!542757))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82618 (= res!644172 (validMask!0 mask!2110))))

(assert (=> start!82618 e!542757))

(assert (=> start!82618 true))

(declare-fun array_inv!21951 (array!59129) Bool)

(assert (=> start!82618 (and (array_inv!21951 _values!1400) e!542758)))

(declare-fun array_inv!21952 (array!59131) Bool)

(assert (=> start!82618 (array_inv!21952 _keys!1686)))

(assert (=> start!82618 tp!65290))

(assert (=> start!82618 tp_is_empty!21525))

(declare-fun b!962399 () Bool)

(declare-fun res!644169 () Bool)

(assert (=> b!962399 (=> (not res!644169) (not e!542757))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!962399 (= res!644169 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28910 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28910 _keys!1686))))))

(declare-fun b!962400 () Bool)

(declare-fun res!644171 () Bool)

(assert (=> b!962400 (=> (not res!644171) (not e!542757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962400 (= res!644171 (validKeyInArray!0 (select (arr!28430 _keys!1686) i!803)))))

(declare-fun b!962401 () Bool)

(declare-fun res!644174 () Bool)

(assert (=> b!962401 (=> (not res!644174) (not e!542757))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!962401 (= res!644174 (and (= (size!28909 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28910 _keys!1686) (size!28909 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962402 () Bool)

(declare-fun res!644173 () Bool)

(assert (=> b!962402 (=> (not res!644173) (not e!542757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59131 (_ BitVec 32)) Bool)

(assert (=> b!962402 (= res!644173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962403 () Bool)

(assert (=> b!962403 (= e!542757 false)))

(declare-fun lt!430833 () Bool)

(declare-fun minValue!1342 () V!33683)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33683)

(declare-datatypes ((tuple2!13968 0))(
  ( (tuple2!13969 (_1!6994 (_ BitVec 64)) (_2!6994 V!33683)) )
))
(declare-datatypes ((List!19853 0))(
  ( (Nil!19850) (Cons!19849 (h!21011 tuple2!13968) (t!28224 List!19853)) )
))
(declare-datatypes ((ListLongMap!12679 0))(
  ( (ListLongMap!12680 (toList!6355 List!19853)) )
))
(declare-fun contains!5409 (ListLongMap!12679 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3540 (array!59131 array!59129 (_ BitVec 32) (_ BitVec 32) V!33683 V!33683 (_ BitVec 32) Int) ListLongMap!12679)

(assert (=> b!962403 (= lt!430833 (contains!5409 (getCurrentListMap!3540 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28430 _keys!1686) i!803)))))

(declare-fun b!962404 () Bool)

(assert (=> b!962404 (= e!542756 tp_is_empty!21525)))

(declare-fun mapIsEmpty!34282 () Bool)

(assert (=> mapIsEmpty!34282 mapRes!34282))

(assert (= (and start!82618 res!644172) b!962401))

(assert (= (and b!962401 res!644174) b!962402))

(assert (= (and b!962402 res!644173) b!962397))

(assert (= (and b!962397 res!644170) b!962399))

(assert (= (and b!962399 res!644169) b!962400))

(assert (= (and b!962400 res!644171) b!962403))

(assert (= (and b!962396 condMapEmpty!34282) mapIsEmpty!34282))

(assert (= (and b!962396 (not condMapEmpty!34282)) mapNonEmpty!34282))

(get-info :version)

(assert (= (and mapNonEmpty!34282 ((_ is ValueCellFull!10281) mapValue!34282)) b!962398))

(assert (= (and b!962396 ((_ is ValueCellFull!10281) mapDefault!34282)) b!962404))

(assert (= start!82618 b!962396))

(declare-fun m!892125 () Bool)

(assert (=> start!82618 m!892125))

(declare-fun m!892127 () Bool)

(assert (=> start!82618 m!892127))

(declare-fun m!892129 () Bool)

(assert (=> start!82618 m!892129))

(declare-fun m!892131 () Bool)

(assert (=> b!962397 m!892131))

(declare-fun m!892133 () Bool)

(assert (=> mapNonEmpty!34282 m!892133))

(declare-fun m!892135 () Bool)

(assert (=> b!962400 m!892135))

(assert (=> b!962400 m!892135))

(declare-fun m!892137 () Bool)

(assert (=> b!962400 m!892137))

(declare-fun m!892139 () Bool)

(assert (=> b!962403 m!892139))

(assert (=> b!962403 m!892135))

(assert (=> b!962403 m!892139))

(assert (=> b!962403 m!892135))

(declare-fun m!892141 () Bool)

(assert (=> b!962403 m!892141))

(declare-fun m!892143 () Bool)

(assert (=> b!962402 m!892143))

(check-sat (not b_next!18723) tp_is_empty!21525 (not b!962403) (not mapNonEmpty!34282) (not b!962397) (not start!82618) b_and!30229 (not b!962402) (not b!962400))
(check-sat b_and!30229 (not b_next!18723))
