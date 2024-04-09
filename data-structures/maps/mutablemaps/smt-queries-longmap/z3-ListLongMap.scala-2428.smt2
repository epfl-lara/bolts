; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38348 () Bool)

(assert start!38348)

(declare-fun b!395172 () Bool)

(declare-fun res!226608 () Bool)

(declare-fun e!239266 () Bool)

(assert (=> b!395172 (=> (not res!226608) (not e!239266))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!395172 (= res!226608 (validMask!0 mask!1025))))

(declare-fun b!395173 () Bool)

(declare-fun res!226609 () Bool)

(assert (=> b!395173 (=> (not res!226609) (not e!239266))))

(declare-datatypes ((array!23501 0))(
  ( (array!23502 (arr!11200 (Array (_ BitVec 32) (_ BitVec 64))) (size!11552 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23501)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14181 0))(
  ( (V!14182 (val!4948 Int)) )
))
(declare-datatypes ((ValueCell!4560 0))(
  ( (ValueCellFull!4560 (v!7190 V!14181)) (EmptyCell!4560) )
))
(declare-datatypes ((array!23503 0))(
  ( (array!23504 (arr!11201 (Array (_ BitVec 32) ValueCell!4560)) (size!11553 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23503)

(assert (=> b!395173 (= res!226609 (and (= (size!11553 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11552 _keys!709) (size!11553 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!395174 () Bool)

(declare-fun res!226606 () Bool)

(assert (=> b!395174 (=> (not res!226606) (not e!239266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23501 (_ BitVec 32)) Bool)

(assert (=> b!395174 (= res!226606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!226607 () Bool)

(assert (=> start!38348 (=> (not res!226607) (not e!239266))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38348 (= res!226607 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11552 _keys!709))))))

(assert (=> start!38348 e!239266))

(assert (=> start!38348 true))

(declare-fun e!239270 () Bool)

(declare-fun array_inv!8202 (array!23503) Bool)

(assert (=> start!38348 (and (array_inv!8202 _values!549) e!239270)))

(declare-fun array_inv!8203 (array!23501) Bool)

(assert (=> start!38348 (array_inv!8203 _keys!709)))

(declare-fun b!395175 () Bool)

(declare-fun e!239268 () Bool)

(declare-fun tp_is_empty!9807 () Bool)

(assert (=> b!395175 (= e!239268 tp_is_empty!9807)))

(declare-fun b!395176 () Bool)

(declare-fun e!239267 () Bool)

(declare-fun mapRes!16323 () Bool)

(assert (=> b!395176 (= e!239270 (and e!239267 mapRes!16323))))

(declare-fun condMapEmpty!16323 () Bool)

(declare-fun mapDefault!16323 () ValueCell!4560)

(assert (=> b!395176 (= condMapEmpty!16323 (= (arr!11201 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4560)) mapDefault!16323)))))

(declare-fun mapNonEmpty!16323 () Bool)

(declare-fun tp!32118 () Bool)

(assert (=> mapNonEmpty!16323 (= mapRes!16323 (and tp!32118 e!239268))))

(declare-fun mapKey!16323 () (_ BitVec 32))

(declare-fun mapRest!16323 () (Array (_ BitVec 32) ValueCell!4560))

(declare-fun mapValue!16323 () ValueCell!4560)

(assert (=> mapNonEmpty!16323 (= (arr!11201 _values!549) (store mapRest!16323 mapKey!16323 mapValue!16323))))

(declare-fun b!395177 () Bool)

(assert (=> b!395177 (= e!239266 false)))

(declare-fun lt!187043 () Bool)

(declare-datatypes ((List!6472 0))(
  ( (Nil!6469) (Cons!6468 (h!7324 (_ BitVec 64)) (t!11654 List!6472)) )
))
(declare-fun arrayNoDuplicates!0 (array!23501 (_ BitVec 32) List!6472) Bool)

(assert (=> b!395177 (= lt!187043 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6469))))

(declare-fun b!395178 () Bool)

(assert (=> b!395178 (= e!239267 tp_is_empty!9807)))

(declare-fun mapIsEmpty!16323 () Bool)

(assert (=> mapIsEmpty!16323 mapRes!16323))

(assert (= (and start!38348 res!226607) b!395172))

(assert (= (and b!395172 res!226608) b!395173))

(assert (= (and b!395173 res!226609) b!395174))

(assert (= (and b!395174 res!226606) b!395177))

(assert (= (and b!395176 condMapEmpty!16323) mapIsEmpty!16323))

(assert (= (and b!395176 (not condMapEmpty!16323)) mapNonEmpty!16323))

(get-info :version)

(assert (= (and mapNonEmpty!16323 ((_ is ValueCellFull!4560) mapValue!16323)) b!395175))

(assert (= (and b!395176 ((_ is ValueCellFull!4560) mapDefault!16323)) b!395178))

(assert (= start!38348 b!395176))

(declare-fun m!391299 () Bool)

(assert (=> start!38348 m!391299))

(declare-fun m!391301 () Bool)

(assert (=> start!38348 m!391301))

(declare-fun m!391303 () Bool)

(assert (=> b!395177 m!391303))

(declare-fun m!391305 () Bool)

(assert (=> b!395174 m!391305))

(declare-fun m!391307 () Bool)

(assert (=> b!395172 m!391307))

(declare-fun m!391309 () Bool)

(assert (=> mapNonEmpty!16323 m!391309))

(check-sat (not mapNonEmpty!16323) tp_is_empty!9807 (not b!395177) (not start!38348) (not b!395174) (not b!395172))
(check-sat)
