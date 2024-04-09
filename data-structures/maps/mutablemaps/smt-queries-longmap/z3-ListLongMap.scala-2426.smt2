; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38324 () Bool)

(assert start!38324)

(declare-fun b!394972 () Bool)

(declare-fun e!239152 () Bool)

(declare-datatypes ((array!23475 0))(
  ( (array!23476 (arr!11188 (Array (_ BitVec 32) (_ BitVec 64))) (size!11540 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23475)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!394972 (= e!239152 (and (or (= (select (arr!11188 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11188 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge #b00000000000000000000000000000000 (size!11540 _keys!709))))))

(declare-fun b!394973 () Bool)

(declare-fun e!239153 () Bool)

(declare-fun tp_is_empty!9795 () Bool)

(assert (=> b!394973 (= e!239153 tp_is_empty!9795)))

(declare-fun mapNonEmpty!16302 () Bool)

(declare-fun mapRes!16302 () Bool)

(declare-fun tp!32097 () Bool)

(declare-fun e!239151 () Bool)

(assert (=> mapNonEmpty!16302 (= mapRes!16302 (and tp!32097 e!239151))))

(declare-datatypes ((V!14165 0))(
  ( (V!14166 (val!4942 Int)) )
))
(declare-datatypes ((ValueCell!4554 0))(
  ( (ValueCellFull!4554 (v!7184 V!14165)) (EmptyCell!4554) )
))
(declare-datatypes ((array!23477 0))(
  ( (array!23478 (arr!11189 (Array (_ BitVec 32) ValueCell!4554)) (size!11541 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23477)

(declare-fun mapRest!16302 () (Array (_ BitVec 32) ValueCell!4554))

(declare-fun mapKey!16302 () (_ BitVec 32))

(declare-fun mapValue!16302 () ValueCell!4554)

(assert (=> mapNonEmpty!16302 (= (arr!11189 _values!549) (store mapRest!16302 mapKey!16302 mapValue!16302))))

(declare-fun b!394974 () Bool)

(declare-fun res!226480 () Bool)

(assert (=> b!394974 (=> (not res!226480) (not e!239152))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!394974 (= res!226480 (validKeyInArray!0 k0!794))))

(declare-fun b!394975 () Bool)

(declare-fun res!226482 () Bool)

(assert (=> b!394975 (=> (not res!226482) (not e!239152))))

(assert (=> b!394975 (= res!226482 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11540 _keys!709))))))

(declare-fun b!394976 () Bool)

(declare-fun res!226483 () Bool)

(assert (=> b!394976 (=> (not res!226483) (not e!239152))))

(declare-datatypes ((List!6466 0))(
  ( (Nil!6463) (Cons!6462 (h!7318 (_ BitVec 64)) (t!11648 List!6466)) )
))
(declare-fun arrayNoDuplicates!0 (array!23475 (_ BitVec 32) List!6466) Bool)

(assert (=> b!394976 (= res!226483 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6463))))

(declare-fun b!394977 () Bool)

(assert (=> b!394977 (= e!239151 tp_is_empty!9795)))

(declare-fun b!394978 () Bool)

(declare-fun res!226485 () Bool)

(assert (=> b!394978 (=> (not res!226485) (not e!239152))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23475 (_ BitVec 32)) Bool)

(assert (=> b!394978 (= res!226485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!394979 () Bool)

(declare-fun res!226484 () Bool)

(assert (=> b!394979 (=> (not res!226484) (not e!239152))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!394979 (= res!226484 (and (= (size!11541 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11540 _keys!709) (size!11541 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!226481 () Bool)

(assert (=> start!38324 (=> (not res!226481) (not e!239152))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38324 (= res!226481 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11540 _keys!709))))))

(assert (=> start!38324 e!239152))

(assert (=> start!38324 true))

(declare-fun e!239150 () Bool)

(declare-fun array_inv!8190 (array!23477) Bool)

(assert (=> start!38324 (and (array_inv!8190 _values!549) e!239150)))

(declare-fun array_inv!8191 (array!23475) Bool)

(assert (=> start!38324 (array_inv!8191 _keys!709)))

(declare-fun mapIsEmpty!16302 () Bool)

(assert (=> mapIsEmpty!16302 mapRes!16302))

(declare-fun b!394980 () Bool)

(declare-fun res!226486 () Bool)

(assert (=> b!394980 (=> (not res!226486) (not e!239152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394980 (= res!226486 (validMask!0 mask!1025))))

(declare-fun b!394981 () Bool)

(assert (=> b!394981 (= e!239150 (and e!239153 mapRes!16302))))

(declare-fun condMapEmpty!16302 () Bool)

(declare-fun mapDefault!16302 () ValueCell!4554)

(assert (=> b!394981 (= condMapEmpty!16302 (= (arr!11189 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4554)) mapDefault!16302)))))

(assert (= (and start!38324 res!226481) b!394980))

(assert (= (and b!394980 res!226486) b!394979))

(assert (= (and b!394979 res!226484) b!394978))

(assert (= (and b!394978 res!226485) b!394976))

(assert (= (and b!394976 res!226483) b!394975))

(assert (= (and b!394975 res!226482) b!394974))

(assert (= (and b!394974 res!226480) b!394972))

(assert (= (and b!394981 condMapEmpty!16302) mapIsEmpty!16302))

(assert (= (and b!394981 (not condMapEmpty!16302)) mapNonEmpty!16302))

(get-info :version)

(assert (= (and mapNonEmpty!16302 ((_ is ValueCellFull!4554) mapValue!16302)) b!394977))

(assert (= (and b!394981 ((_ is ValueCellFull!4554) mapDefault!16302)) b!394973))

(assert (= start!38324 b!394981))

(declare-fun m!391189 () Bool)

(assert (=> start!38324 m!391189))

(declare-fun m!391191 () Bool)

(assert (=> start!38324 m!391191))

(declare-fun m!391193 () Bool)

(assert (=> mapNonEmpty!16302 m!391193))

(declare-fun m!391195 () Bool)

(assert (=> b!394976 m!391195))

(declare-fun m!391197 () Bool)

(assert (=> b!394978 m!391197))

(declare-fun m!391199 () Bool)

(assert (=> b!394980 m!391199))

(declare-fun m!391201 () Bool)

(assert (=> b!394972 m!391201))

(declare-fun m!391203 () Bool)

(assert (=> b!394974 m!391203))

(check-sat (not mapNonEmpty!16302) (not b!394976) tp_is_empty!9795 (not start!38324) (not b!394974) (not b!394980) (not b!394978))
(check-sat)
